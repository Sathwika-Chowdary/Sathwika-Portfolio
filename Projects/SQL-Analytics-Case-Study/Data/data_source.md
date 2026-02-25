# Data Source

## Dataset
Online Retail (UCI) / Online Retail II public retail transactions dataset.

## Why this dataset
- Real invoice-level transaction data
- Suitable for KPI, customer, product, and geographic analysis
- Supports both SQL analysis and Power BI reporting

## Cleaning assumptions used in this SQL case study
1) Exclude cancellations:
   - `InvoiceNo NOT LIKE 'C%'`

2) Exclude invalid sales:
   - `Quantity > 0`
   - `UnitPrice > 0`

3) Exclude null customers:
   - `CustomerID IS NOT NULL`

4) Revenue formula:
   - `Quantity * UnitPrice`

## Core fields used
- InvoiceNo
- InvoiceDate
- Description
- Quantity
- UnitPrice
- CustomerID
- Country
