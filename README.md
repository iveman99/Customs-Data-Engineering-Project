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

<img width="985" height="535" alt="image" src="https://github.com/user-attachments/assets/b2e5f345-44bb-4dea-b22b-8102caef99fc" />


---

## 📊 **2. Power BI Dashboard**

Created a complete **Operational Shipments Dashboard**:

✔ CleanStatus Pie Chart
✔ GST State Breakdown
✔ PORT-wise SB Count
✔ Gateway vs Status Matrix
✔ Slicer Panel (PORT, IEC, Status, EGM, Gateway)
✔ Total KPI Cards (SB, IEC, PORT, Gateway, EGM)

<img width="1029" height="744" alt="image" src="https://github.com/user-attachments/assets/3091316d-4032-4925-893d-8c6899d42c87" />


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


<img width="1021" height="547" alt="image" src="https://github.com/user-attachments/assets/bb943e57-6084-4255-b4c2-69a1e0fd2275" />
<img width="1012" height="515" alt="image" src="https://github.com/user-attachments/assets/8974ac68-4d81-4bfb-90d5-5480af8e93d4" />


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
<img width="1024" height="723" alt="image" src="https://github.com/user-attachments/assets/f8c25572-b4c4-491a-b7b0-618afdbfb571" />
<img width="1039" height="188" alt="image" src="https://github.com/user-attachments/assets/8b446140-4bd7-4167-b2cf-1873f23469cb" />



---

## 🌐 **5. Selenium Web Scraping**

You automated scraping of **Wikipedia – List of countries by population**.

✔ Extracted tabular data
✔ Converted to structured rows/columns
✔ Saved output CSV
✔ Captured screenshots
<img width="1031" height="612" alt="image" src="https://github.com/user-attachments/assets/12995a1f-4f32-45f1-ad6f-a16d6d83a0c1" />
<img width="1023" height="591" alt="image" src="https://github.com/user-attachments/assets/fc41c6a7-aa68-4763-a67e-bda7bfe8c28f" />


---

## 🐍 **6. Python Data Manipulation**

A complete cleaning script in Jupyter Notebook containing:

✔ Data type corrections
✔ Text trimming
✔ Column transformations
✔ Grouping, filtering
✔ Final exported CSV
<img width="982" height="883" alt="image" src="https://github.com/user-attachments/assets/f63c0f60-79c6-49c9-9d90-ee211f49b22e" />

<img width="1011" height="749" alt="image" src="https://github.com/user-attachments/assets/fd476a72-2bf9-4ab0-967e-d9f3fdd2b2c2" />

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
👤 Author
Veman S Chippa

A data enthusiast who believes that data doesn’t just talk —
👉 “Data speaks… if you know how to listen.”

🔗 Portfolio: https://iveman.vercel.app/
