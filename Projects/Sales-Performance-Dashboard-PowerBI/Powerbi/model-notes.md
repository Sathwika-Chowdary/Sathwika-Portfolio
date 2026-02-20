# Model Notes (Date Table + Relationships)

## 1) Create a date-only column
Create `InvoiceDate_Date` from InvoiceDate (in Power Query or DAX).

Example DAX:
InvoiceDate_Date =
DATE(
  YEAR('Online Retail'[InvoiceDate]),
  MONTH('Online Retail'[InvoiceDate]),
  DAY('Online Retail'[InvoiceDate])
)

## 2) Create Date table
Date =
CALENDAR(
  MIN('Online Retail'[InvoiceDate_Date]),
  MAX('Online Retail'[InvoiceDate_Date])
)

Year = YEAR('Date'[Date])
Month Number = MONTH('Date'[Date])
Month = FORMAT('Date'[Date], "MMM")

## 3) Sort Month correctly
Select `Date[Month]` → Column tools → Sort by column → `Date[Month Number]`

## 4) Relationship
Model view:
- Online Retail[InvoiceDate_Date] → Date[Date]
- Cardinality: Many-to-one (*:1)
- Cross filter direction: Single

## 5) Mark Date table
Table tools → Mark as date table → choose `Date[Date]`
