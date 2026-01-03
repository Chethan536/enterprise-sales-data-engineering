# Enterprise Sales Data Engineering Pipeline

## Project Overview
This project demonstrates an end-to-end data engineering pipeline for building an analytics-ready sales data warehouse.

The pipeline ingests raw CSV data, performs data cleaning and transformation using Python, loads the data into a star-schema model, and enables business analytics using SQL and Power BI.

The objective is to simulate a real-world data engineering workflow—from raw data ingestion to actionable business insights.

---

## Problem Statement
Organizations often receive data from multiple source systems in raw and inconsistent formats, which makes analytics slow and unreliable.

The key challenges addressed in this project include:
- Cleaning and standardizing raw data
- Designing an efficient analytical data model
- Enabling fast and reliable analytical queries
- Delivering meaningful business insights through dashboards

---

## Architecture & Workflow
1. Raw data ingestion from CSV files
2. Data inspection and cleaning using Python (Pandas)
3. Transformation into dimension and fact tables (star schema)
4. Data loading into a MySQL data warehouse
5. Analytical querying using SQL
6. Business reporting using Power BI

---

## Data Model (Star Schema)

### Dimension Tables
- **dim_customer**: Customer master data
- **dim_product**: Product and category information

### Fact Table
- **fact_transactions**: Sales transactions including quantities, prices, and revenue

This star-schema design supports efficient aggregations and BI reporting.

---

## Analytics & Insights
Using SQL and Power BI, the following insights were generated:
- Monthly revenue trends
- Revenue by product category
- Top customers by total spending

---

## Tools & Technologies
- **Python** (Pandas, NumPy)
- **MySQL** (Data Warehouse)
- **SQL** (Analytical queries)
- **Power BI** (Dashboard and visualization)

---

## Challenges Faced
- Handling inconsistent raw data (missing values and duplicates)
- Designing a scalable star-schema data model
- Scaling transactional data to simulate real-world data volumes
- Resolving Power BI and MySQL connectivity issues

---

## Outcome
The project delivers a production-style data pipeline with clean data modeling, scalable transformations, and actionable business insights through dashboards.

---

## Future Enhancements
- Incremental and scheduled data loading
- Pipeline automation using workflow orchestration tools
- Cloud-based storage and data warehouse integration
