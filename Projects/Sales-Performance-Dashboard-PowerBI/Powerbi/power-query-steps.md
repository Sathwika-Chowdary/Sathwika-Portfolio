# Power Query Steps (Transformations)

Power BI Desktop → Home → Transform data

## 1) Set data types
- InvoiceNo: Text
- StockCode: Text
- Description: Text
- Quantity: Whole number
- InvoiceDate: Date/Time
- UnitPrice: Decimal number
- CustomerID: Whole number (or Text if needed)
- Country: Text

## 2) Remove cancellations
Filter InvoiceNo:
- Text Filters → Does Not Begin With → `C`

(If Text Filters are missing, first set InvoiceNo datatype to Text.)

## 3) Filter valid sales
- Quantity > 0
- UnitPrice > 0

## 4) Remove missing customers (recommended)
- Filter CustomerID is not null

## 5) Add Revenue column
Add Column → Custom Column
- Name: Revenue
- Formula: `[Quantity] * [UnitPrice]`

## 6) Close & Apply
Home → Close & Apply
