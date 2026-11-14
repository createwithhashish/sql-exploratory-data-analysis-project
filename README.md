# 📊 SQL Exploratory Data Analysis (EDA) & Business Reporting Project

Welcome to the **SQL Exploratory Data Analysis & Business Reporting Project**!  
This repository contains a complete end-to-end data exploration and analytical reporting workflow built in **MySQL**, structured around a **Gold-layer Star Schema** (`DataWarehouseAnalytics2`).

---

## 📋 Project Overview

This project demonstrates practical SQL skills through data ingestion, data cleaning, transformation, data integration and data quality validation.

### Project Objectives
* Design and develop a SQL Data Warehouse using **MySQL**.
* Integrate **CRM** and **ERP** data from CSV source files.
* Clean, standardize, and transform raw data using SQL.
* Develop stored procedures to manage data loading.
* Create analytical views using dimensional data modelling.
* Perform data quality checks to validate data accuracy and consistency.
* Prepare customer, product, and sales data for analytical reporting.

---

## 🛠️ Technologies Used

* **MySQL** – Database management and SQL-based transformations.
* **MySQL Workbench** – Database development and query execution.
* **SQL** – Data ingestion, cleaning, transformation, joins, stored procedures, and views.
* **Git & GitHub** – Version control and project documentation.

---

## 🏗️ Project Architecture & Repository Structure

The repository is organized into three main folders following industry best practices:

```text
sql-exploratory-data-analysis-project/
├── datasets/                     # Raw flat-file CSV datasets
│   ├── dim_customers.csv         # Customer dimension data (18,484 records)
│   ├── dim_products.csv          # Product dimension data (295 records)
│   └── fact_sales.csv            # Sales transaction fact data (60,398 records)
├── docs/                         # Project documentation & schema notes
├── scripts/                      # Modular MySQL EDA & reporting scripts
│   ├── 00_init_database.sql
│   ├── 01_database_exploration.sql
│   ├── 02_dimensions_exploration.sql
│   ├── 03_date_range_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   ├── 06_ranking_analysis.sql
│   ├── 07_change_over_time_analysis.sql
│   ├── 08_cumulative_analysis.sql
│   ├── 09_performance_analysis.sql
│   ├── 10_data_segmentation.sql
│   ├── 11_part_to_whole_analysis.sql
│   ├── 12_report_customers.sql
│   └── 13_report_products.sql
└── README.md

## 📂 Data Sources

The project uses two source systems containing CSV datasets:

* **CRM (Customer Relationship Management):** Provides customer information, product details, and sales transactions.
* **ERP (Enterprise Resource Planning):** Provides additional customer, location, and product category information.


---

---

## 👤 About Me

Hi! I'm **Ashish**, currently pursuing an **MBA**, with an academic background in **Economics** and a strong interest in **Data Analytics**.

I'm developing my skills in **SQL**, **Python**, and **business analytics**, with the goal of turning data into meaningful business insights. I'm also interested in **Marketing Analytics** and the intersection of business and data.

Thanks for visiting my project!
