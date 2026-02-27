# ETL Data Quality Pipeline

## Overview
This project demonstrates a simple ETL-style workflow for preparing raw transactional retail data for downstream analytics and reporting.

It focuses on:
- Extract → Transform → Load logic
- Data cleaning rules
- Data quality validation checks
- Preparing clean, reporting-ready data

## Business Goal
Take raw retail transactions and convert them into a clean dataset that can be safely used for:
- Power BI reporting
- SQL analytics
- KPI validation
- customer and product analysis

## Dataset
This project uses the same public retail dataset used across the portfolio:
- Online Retail (UCI) / Online Retail II

Dataset notes: `Data/data_source.md`

## ETL Flow

### 1) Extract
Load the raw transaction data from the source dataset.

### 2) Transform
Apply core business rules:
- Remove cancellations (`InvoiceNo` starting with "C")
- Keep only valid sales (`Quantity > 0`, `UnitPrice > 0`)
- Remove null `CustomerID` for customer-level analysis
- Create `Revenue = Quantity * UnitPrice`

### 3) Validate
Run data quality checks:
- Count raw rows
- Count cancellation rows
- Count invalid quantity rows
- Count invalid price rows
- Count null customer rows
- Count valid rows after filters
- Validate revenue on clean rows

### 4) Load
Insert the cleaned records into a reporting-ready target table.

## Project Files
- Data notes: `Data/data_source.md`
- Quality checks: `SQL/etl_quality_checks.sql`
- ETL pipeline logic: `SQL/etl_pipeline_steps.sql`

## Why this project matters
This project complements the SQL Analytics Case Study and Sales Performance Dashboard by showing the data preparation and validation layer behind the analytics workflow.
