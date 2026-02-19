# Data Source

**Dataset:** Online Retail (UCI Machine Learning Repository)  
**File:** Online Retail.xlsx (not stored in this repo)  
**License:** CC BY 4.0 (attribution)

## Cleaning Rules (Power Query)
- Removed cancellations: InvoiceNo not starting with "C"
- Filtered Quantity > 0 and UnitPrice > 0
- Removed null CustomerID rows
- Created Revenue = Quantity * UnitPrice

## Model
- Date table created and marked as Date table
- Relationship: Online Retail[InvoiceDate_Date] → Date[Date]
