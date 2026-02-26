# ETL Data Quality Pipeline

## Overview
This project documents a simple ETL-style data pipeline with built-in data quality checks for transactional retail data.

It is designed to show practical understanding of:
- Extract → Transform → Load workflow
- Data validation and quality controls
- Reusable business rules for clean reporting data

## Business Goal
Prepare raw transaction data for downstream analytics by:
- removing invalid or cancelled records
- standardizing data fields
- validating core quality rules
- producing a clean dataset ready for BI and SQL analysis

## Pipeline Stages
1. **Extract**
   - Load raw retail transaction data

2. **Transform**
   - Remove cancellations
   - Filter invalid values
   - Standardize types
   - Derive revenue field

3. **Validate**
   - Check for nulls in required fields
   - Check for negative or zero values
   - Check duplicate transaction patterns
   - Confirm row counts before/after cleaning

4. **Load**
   - Output cleaned dataset for reporting / analysis use

## Data Quality Rules
- `InvoiceNo` must not start with `C`
- `Quantity > 0`
- `UnitPrice > 0`
- `CustomerID` should not be null for customer-level analytics
- `Revenue = Quantity * UnitPrice`

## Project Files
- Pipeline rules and steps will be documented in this folder
- SQL quality checks and ETL notes will be added next

## Notes
This project complements the Power BI dashboard and SQL case study by showing the data engineering / data quality side of the same analytics workflow.
