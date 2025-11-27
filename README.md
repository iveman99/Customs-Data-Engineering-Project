# 🚢 Customs Data Engineering Project  
### A Complete End-to-End Data Engineering Workflow  
**By: Vemansh Srinivas Chippa**

![Project Banner](powerbi/snapshots/dashboard_overview.png)

---

## 📌 Project Overview  
This project is a complete **Data Engineering pipeline** built using:

- Excel (Pivot Tables & Complex Transformations)  
- Power BI (Interactive Dashboard)  
- SQL (Relational Database + Queries)  
- Docker (Containerized Processing Pipeline)  
- Selenium (Web Scraping Automation)  
- Python (Data Cleaning + Transformations)

It demonstrates the **end-to-end lifecycle** of handling customs shipment operational data.

---

## 🏗️ Architecture

Raw Excel → Cleaning (Python) → Processed CSV → SQL DB
→ Power BI Dashboard → Selenium Web Scraping → Docker Automation


---

## 📁 Repository Structure

Customs-Data-Engineering-Project/
│
├── data/
├── excel/
├── powerbi/
├── database/
├── docker/
├── selenium/
└── python/


Each folder contains code, snapshots, outputs and scripts for the corresponding task.

---

# ✅ Task 1 — Pivot Tables (Excel)

### ✔ Features
- Multi-level grouped pivot tables  
- Port → Status → Count  
- Gateway → EGM → Count  
- Subtotals + Grand totals  
- Clean formatting

📸 **Screenshots to add:**  
- excel/pivot_tables/pivot_summaries.png  
- excel/computed_fields/computed_fields_screenshot.png  

---

# ✅ Task 2 — Power BI Dashboard

### ✔ Dashboard Contains:
- **5 KPI Cards**  
- **5 Slicers**  
- **Status Matrix**  
- **PORT Chart**  
- **GST State Code Chart**  
- **Status Pie Chart**  
- **Summary Section**

📸 **Screenshots to add:**

---

# ✅ Task 3 — Complex Excel Formulas

### ✔ 5 Computed Fields:
1. Clean_Status  
2. EGM_Flag  
3. ROSL_Flag  
4. Gateway_Flag  
5. Date_Extract / IEC Extracted  

📸 Screenshot:  
excel/computed_fields/computed_fields_screenshot.png

---

# ✅ Task 4 — SQL Database (Mini DBMS)

### ✔ 4 Tables Created:
- shipment_info  
- exporter_details  
- compliance_details  
- status_details  

### ✔ Included:
- Primary Keys  
- Foreign Keys  
- Indexes  
- Sample Inserts  
- Working Queries  

📸 Screenshots:


---

# ✅ Task 5 — Data Sorting (Excel)

### ✔ Two Sorted Versions:
- Sort by PORT → Clean_Status → SB Date  
- Sort by GST → IEC → Gateway  

📸 Screenshots:


---

# ✅ Task 6 — Docker Automation Pipeline

### ✔ Included:
- Dockerfile  
- Python script that:
  - Reads Excel  
  - Cleans dataset  
  - Saves cleaned CSV  
- Bind mounted volumes  
- Successful run proof

📸 Required screenshots:


---

# ✅ Task 7 — Selenium Web Scraper

### ✔ Accomplishes:
- Opens Wikipedia page  
- Scrapes population data table  
- Converts to rows and columns  
- Saves CSV  
- Works fully in Jupyter Notebook  

📸 Screenshot:


---

# ✅ Task 8–9 — Python Data Cleaning

### ✔ Performed:
- Duplicate removal  
- Date formatting  
- Conditional flags  
- Grouping  
- Exporting final cleaned dataset  

📸 Screenshots:


---

## 📦 How to Run (Instructions)

### 🐋 Docker
```bash
docker build -t shipments-cleaner .
docker run --rm -v "${PWD}/data:/data" -v "${PWD}/output:/output" shipments-cleaner


pip install -r requirements.txt
python process_data.py

python selenium_scraper.py

📚 Conclusion

This repo demonstrates a complete data engineering lifecycle, from raw data → automation → visualization → database → containerization → web scraping.

Perfect for:
✔ College project
✔ Portfolio
✔ Interview showcase

⭐ Author

Vemansh Srinivas Chippa
📧 info.veman99@gmail.com

🔗 https://www.linkedin.com/in/veman-chippa/



Project Name: Export Shipments Analysis — End-to-End Data Engineering Project
Author: Veman S Chippa
Year: 2025
----------------------------------------------------------

├── data
│   └── raw
│       └── shipments_raw.xlsx             # Original dataset
│
├── database
│   ├── erd
│   │   └── erd_diagram.png               # ERD diagram created
│   └── schema
│       └── database_schema.sql           # SQL table creation scripts
│
├── docker
│   ├── Dockerfile                        # Container setup for Python automation
│   ├── process_data.py                   # Automated data cleaning script
│   └── output
│       └── cleaned_shipments.csv         # Output produced from running Docker
│
├── excel
│   ├── Combined excel worksheets         # All combined & sorted Excel sheets
│   └── Snapshots
│       └── sorting_screenshots.png       # Sorting proof
│
├── powerbi
│   ├── dashboards
│   │   └── shipments_dashboard.pbix       # Final BI dashboard
│   ├── pdf
│   │   └── dashboard_export.pdf           # Static view for submission
│   └── snapshots
│       ├── slicers.png
│       ├── charts.png
│       └── final_dashboard.png
│
├── python
│   ├── screenshots
│   │   └── python_cleaning_output.png
│   ├── cleaned_population_data.csv       # Cleaned dataset from Jupyter
│   └── data_cleaning_final.ipynb         # Notebook used for Python cleaning
│
├── selenium
│   ├── screenshots
│   │   └── selenium_output.png           # Browser automation proof
│   ├── scraped_wikipedia_population.csv  # Extracted data
│   └── selenium_scraper.py               # Script using Selenium
│
└── README.md                             # Full project documentation

