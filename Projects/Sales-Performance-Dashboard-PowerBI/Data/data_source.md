# Data Source & Assumptions

## Dataset
Online Retail (UCI) / Online Retail II (public mirrors exist).

## Why this dataset
- Real invoice line-item transactions
- Supports KPI, customer, and product analysis
- Includes cancellations/returns → strong cleaning story

## Cleaning rules used (important)
1) Remove cancellations: `InvoiceNo` starting with **"C"**
2) Remove invalid sales:
   - `Quantity` > 0
   - `UnitPrice` > 0
3) Remove missing customers (recommended for customer analytics):
   - `CustomerID` is not null
4) Create `Revenue` = `Quantity * UnitPrice`

## Key columns
- InvoiceNo, InvoiceDate
- StockCode, Description
- Quantity, UnitPrice
- CustomerID, Country
