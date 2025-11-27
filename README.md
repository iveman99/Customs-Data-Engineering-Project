# 🚢 **END-to-END Shipments & Compliance Automation Project**

### 🔍 **Data Cleaning | Power BI Dashboard | SQL DBMS | Docker | Selenium Web Scraping | Python Analytics**

---

## 📌 **Project Overview**

This project is a complete **end-to-end data engineering + analytics pipeline**, built using:

* **Excel** for data extraction & sorting
* **Power BI** for dashboard insights
* **MySQL DBMS** for structured storage
* **Python** for cleaning & automation
* **Docker** to containerize the pipeline
* **Selenium** for web scraping
* **Jupyter Notebook** for data analysis

The goal is to take a **raw shipments dataset** and turn it into:
✔ Clean structured data
✔ Automated pipelines
✔ Interactive dashboards
✔ A reproducible container environment
✔ A web-scraped structured CSV
✔ A final cleaned dataset for analysis

This project showcases a **complete real-world workflow** used in:
📦 Logistics,
💼 Compliance,
📊 Data Analysis,
🖥 Automation, and
☁ Data Engineering.

---

## 🗂 **Repository Structure**

```
project-root/
│
├── data/
│   └── raw/
│       └── input.xlsx
│
├── database/
│   ├── erd/
│   └── schema/
│
├── docker/
│   ├── Dockerfile
│   ├── output/
│   └── process_data.py
│
├── excel/
│   ├── Combined excel worksheets/
│   └── Snapshots/
│
├── powerbi/
│   ├── dashboards/
│   ├── pdf/
│   └── snapshots/
│
├── python/
│   ├── screenshots/
│   ├── cleaned_population_data.csv
│   └── data_cleaning_final.ipynb
│
├── selenium/
│   ├── screenshots/
│   ├── scraped_wikipedia_population.csv
│   └── selenium_scraper.py
│
└── README.md
```

---

## 📘 **1. Excel Processing & Data Cleaning**

**Tasks completed:**

✔ Removed duplicates
✔ Cleaned inconsistent fields
✔ Created 5 computed fields:

* `Clean_Status`
* `EGM_Flag`
* `ROSL_Flag`
* `Gateway_Flag`
* `GST_StateCode`

✔ Performed **multi-level sorting**
✔ Combined worksheets
✔ Prepared final cleaned Excel for Power BI

📸 *Snapshots are stored inside:*
`/excel/Snapshots/`

---

## 📊 **2. Power BI Dashboard**

Created a complete **Operational Shipments Dashboard**:

✔ CleanStatus Pie Chart
✔ GST State Breakdown
✔ PORT-wise SB Count
✔ Gateway vs Status Matrix
✔ Slicer Panel (PORT, IEC, Status, EGM, Gateway)
✔ Total KPI Cards (SB, IEC, PORT, Gateway, EGM)

📁 *Dashboard file:*
`/powerbi/dashboards/shipments_dashboard.pbix`

📸 *Screenshots:*
`/powerbi/snapshots/`

📄 *PDF export:*
`/powerbi/pdf/`

---

## 🛢 **3. SQL DBMS (MySQL)**

Created **4 relational tables**:

* `shipment_info`
* `exporter_details`
* `compliance_details`
* `status_details`

✔ Added foreign keys
✔ Inserted sample rows
✔ Wrote analytical SQL queries
✔ Generated ERD diagram

📁 *SQL Schema:*
`/database/schema/`

📁 *ERD Diagram:*
`/database/erd/`

---

## 🐳 **4. Docker Containerization**

You built a container that:
✔ Installs Python dependencies
✔ Mounts input/output volumes
✔ Runs `process_data.py`
✔ Produces `/output/cleaned_shipments.csv`

### **Run Instructions:**

```bash
docker build -t shipments-cleaner .
docker run --rm -v "${PWD}/data:/data" -v "${PWD}/output:/output" shipments-cleaner
```

📁 Files:

* `docker/Dockerfile`
* `docker/process_data.py`
* `docker/output/cleaned_shipments.csv`

---

## 🌐 **5. Selenium Web Scraping**

You automated scraping of **Wikipedia – List of countries by population**.

✔ Extracted tabular data
✔ Converted to structured rows/columns
✔ Saved output CSV
✔ Captured screenshots

📁 Files:

* `/selenium/selenium_scraper.py`
* `/selenium/scraped_wikipedia_population.csv`
* `/selenium/screenshots/`

---

## 🐍 **6. Python Data Manipulation**

A complete cleaning script in Jupyter Notebook containing:

✔ Data type corrections
✔ Text trimming
✔ Column transformations
✔ Grouping, filtering
✔ Final exported CSV

📁 Notebook:
`/python/data_cleaning_final.ipynb`

📁 Output CSV:
`/python/cleaned_population_data.csv`

---

## 🧩 **7. Final Deliverables**

Your project contains all required outputs:

### ✔ Excel cleaning

### ✔ Power BI Dashboard

### ✔ SQL DBMS + ERD

### ✔ Docker container

### ✔ Selenium script + CSV

### ✔ Python notebook

### ✔ GitHub repository

### ✔ Professional README.md (this file)

---

## 🧪 **How to Run the Project**

### **1. Clone the Repository**

```bash
git clone https://github.com/<your-username>/shipment-project.git
cd shipment-project
```

### **2. Run Docker Pipeline**

```bash
docker build -t shipments-cleaner .
docker run --rm -v "${PWD}/data:/data" -v "${PWD}/output:/output" shipments-cleaner
```

### **3. Run Selenium Scraper**

```bash
python selenium/selenium_scraper.py
```

### **4. Open Power BI Dashboard**

File: `powerbi/dashboards/shipments_dashboard.pbix`

## ⭐ **Technologies Used**

| Category      | Tools            |
| ------------- | ---------------- |
| Data Cleaning | Excel, Python    |
| Visualization | Power BI         |
| Database      | MySQL            |
| Automation    | Docker           |
| Web Scraping  | Selenium         |
| Analytics     | Jupyter Notebook |

---
--
