# Enterprise Sales Data Engineering Pipeline



## 📌 Project Overview

This project demonstrates an end-to-end data engineering pipeline for building an analytics-ready sales data warehouse.  

The pipeline ingests raw CSV data, performs data cleaning and transformation using Python, loads the data into a star-schema model, and enables business analytics using SQL and Power BI.



The goal of the project is to simulate a real-world data engineering workflow—from raw data ingestion to business insights.



---



## 🧩 Problem Statement

Organizations often receive data from multiple source systems in raw, inconsistent formats.  

The challenge is to:

- Clean and standardize the data

- Design an efficient data model

- Enable fast analytical queries

- Provide meaningful business insights through dashboards



---



## 🏗️ Architecture \& Workflow

1. Raw data ingestion from CSV files

2. Data inspection and cleaning using Python (Pandas)

3. Transformation into dimension and fact tables (star schema)

4. Data loading into MySQL data warehouse

5. Analytical queries using SQL

6. Visualization using Power BI



---



## 🧮 Data Model (Star Schema)



### Dimension Tables

\- \*\*dim\_customer\*\*: Customer details

\- \*\*dim\_product\*\*: Product and category details



### Fact Table

\- \*\*fact\_transactions\*\*: Sales transactions with quantities, prices, and revenue



This model supports efficient analytical queries and BI reporting.



---



## 📊 Analytics \& Insights

Using SQL and Power BI, the following insights were derived:

- Monthly revenue trends

- Revenue by product category

- Top customers by total spending



---


## 🛠️ Tools \& Technologies

- \*\*Python\*\* (Pandas, NumPy)

- \*\*MySQL\*\* (Data Warehouse)

- \*\*SQL\*\* (Analytics queries)

- \*\*Power BI\*\* (Dashboard \& visualization)



---



## 🚧 Challenges Faced

- Handling inconsistent raw data (missing values, duplicates)

- Designing a scalable star-schema model

- Scaling transactional data to simulate real-world volume

- Resolving Power BI and MySQL connectivity limitations



---



## ✅ Outcome

The project delivers a complete, production-style data pipeline with clean data modeling, scalable transformations, and actionable business insights through dashboards.



---



## 📌 Future Enhancements

- Incremental data loading

- Automation using scheduling tools

- Cloud-based storage and warehouse integration





