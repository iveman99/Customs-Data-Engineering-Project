CREATE DATABASE shipment_db;
USE shipment_db;

-- 1. shipment_info (master shipment table)
CREATE TABLE shipment_info (
  sb_no VARCHAR(50) NOT NULL,
  port_code VARCHAR(100),
  sb_date DATE,
  iec_extracted VARCHAR(50),
  gst VARCHAR(100),
  gateway_clean VARCHAR(200),
  gateway_extracted VARCHAR(200),
  rosl VARCHAR(100),
  egm_no VARCHAR(50),
  details TEXT,
  PRIMARY KEY (sb_no),
  INDEX idx_port_code (port_code),
  INDEX idx_sb_date (sb_date)
) ENGINE=InnoDB;

-- 2. exporter_details (exporter / IEC-level info)
CREATE TABLE exporter_details (
  iec VARCHAR(50) NOT NULL,
  exporter_name VARCHAR(200),
  address TEXT,
  contact VARCHAR(100),
  PRIMARY KEY (iec)
) ENGINE=InnoDB;

-- 3. compliance_details (flags derived from data)
CREATE TABLE compliance_details (
  compliance_id INT NOT NULL AUTO_INCREMENT,
  sb_no VARCHAR(50) NOT NULL,
  clean_status VARCHAR(50),
  egm_flag VARCHAR(20),      -- e.g. 'Released' / 'Pending'
  rosl_flag VARCHAR(20),     -- e.g. 'Released' / 'Not Released'
  gateway_flag VARCHAR(20),  -- e.g. 'Valid' / 'Invalid'
  remarks TEXT,
  PRIMARY KEY (compliance_id),
  INDEX idx_compliance_sb(sb_no),
  CONSTRAINT fk_compliance_shipment FOREIGN KEY (sb_no)
    REFERENCES shipment_info(sb_no)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 4. status_details (raw status text & EGM mapping etc.)
CREATE TABLE status_details (
  status_id INT NOT NULL AUTO_INCREMENT,
  sb_no VARCHAR(50) NOT NULL,
  raw_status TEXT,
  egm_no VARCHAR(50),
  status_date DATETIME,
  PRIMARY KEY (status_id),
  INDEX idx_status_sb(sb_no),
  CONSTRAINT fk_status_shipment FOREIGN KEY (sb_no)
    REFERENCES shipment_info(sb_no)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB;


-- Insert into shipment_info (master rows)
INSERT INTO shipment_info (sb_no, port_code, sb_date, iec_extracted, gst, gateway_clean, gateway_extracted, rosl, egm_no, details)
VALUES
('SB001','TUGLAKABAD ICD (INTKD6)','2017-07-01','0597024561','GSTIN - 06AXXXXXXC1ZH','INMUN1','INMUN1 131465 2017-07-14','Released','EGM001','Some details here...'),
('SB002','TUGLAKABAD ICD (INTKD6)','2017-07-04','0506074994','GSTIN - 07AXXXXXXM1Z2','INNSA1','INNSA1 132131 2017-07-25','Not Released','EGM002','Another details...'),
('SB003','TUGLAKABAD ICD (INTKD6)','2017-07-25','0513056661','GSTIN - 03AXXXXXX...','INMUN1','INMUN1 133000 2017-07-26','Released','EGM003','...');

-- Exporter details (IEC-level)
INSERT INTO exporter_details (iec, exporter_name, address, contact)
VALUES
('0597024561','Exporter A','Address A','+91-XXXXXXXX'),
('0506074994','Exporter B','Address B','+91-YYYYYYYY');

-- Compliance flags for the shipments
INSERT INTO compliance_details (sb_no, clean_status, egm_flag, rosl_flag, gateway_flag, remarks)
VALUES
('SB001','Processing','Released','Released','Valid','OK'),
('SB002','Pending','Pending','Not Released','Valid','Need check'),
('SB003','Processing','Released','Released','Invalid','Gateway mismatch');

-- Status details
INSERT INTO status_details (sb_no, raw_status, egm_no, status_date)
VALUES
('SB001','Current Que LEO Date EP Copy ... Y 29620/2018 13 SEP 2018','EGM001','2017-07-01 12:07:00'),
('SB002','Current Que LEO Date EP Copy ... N.A.','EGM002','2017-07-04 12:07:00'),
('SB003','Current Que LEO Date ... Y 21484/2017 07 SEP 2017','EGM003','2017-07-25 09:00:00');

SELECT s.sb_no,
       s.port_code,
       s.sb_date,
       s.iec_extracted,
       c.clean_status,
       c.egm_flag,
       c.rosl_flag,
       c.gateway_flag,
       st.egm_no AS status_egm,
       st.status_date
FROM shipment_info s
LEFT JOIN compliance_details c ON s.sb_no = c.sb_no
LEFT JOIN status_details st ON s.sb_no = st.sb_no
ORDER BY s.sb_date DESC, s.sb_no;

SELECT s.sb_no, s.port_code, s.sb_date, c.gateway_flag, c.rosl_flag
FROM shipment_info s
JOIN compliance_details c ON s.sb_no = c.sb_no
WHERE c.gateway_flag = 'Invalid'
   OR c.rosl_flag = 'Not Released'
ORDER BY s.sb_date DESC;

SELECT s.port_code,
       c.clean_status,
       COUNT(*) AS sb_count
FROM shipment_info s
JOIN compliance_details c ON s.sb_no = c.sb_no
GROUP BY s.port_code, c.clean_status
ORDER BY s.port_code, sb_count DESC;

SELECT s.port_code,
       c.clean_status,
       COUNT(*) AS sb_count
FROM shipment_info s
JOIN compliance_details c ON s.sb_no = c.sb_no
GROUP BY s.port_code, c.clean_status
ORDER BY s.port_code, sb_count DESC;

SELECT s.port_code, COUNT(*) AS sb_count
FROM shipment_info s
GROUP BY s.port_code
ORDER BY sb_count DESC
LIMIT 10;

SELECT s.sb_no, s.sb_date, s.port_code, c.egm_flag
FROM shipment_info s
JOIN compliance_details c ON s.sb_no = c.sb_no
WHERE c.egm_flag = 'Pending'
ORDER BY s.sb_date;

SHOW CREATE TABLE compliance_details;
SHOW CREATE TABLE status_details;



