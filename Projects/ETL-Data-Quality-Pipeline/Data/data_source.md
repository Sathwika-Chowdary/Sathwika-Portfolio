# Data Source

## Dataset
This ETL project uses the same public retail transaction dataset used in the portfolio’s Power BI and SQL projects:
- Online Retail (UCI) / Online Retail II

## Why this dataset is used
It is suitable for ETL and data quality validation because it contains:
- raw invoice-level transaction records
- cancellation patterns
- missing values
- business fields that require cleaning before reporting

## Key raw fields
- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## Core transformation assumptions
- Remove cancellations (`InvoiceNo` starting with "C")
- Keep only valid sales (`Quantity > 0`, `UnitPrice > 0`)
- Remove null `CustomerID` for customer-level analysis
- Create `Revenue = Quantity * UnitPrice`
