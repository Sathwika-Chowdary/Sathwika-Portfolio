# DAX Measures

Create these measures in the `Online Retail` table.

## Core KPIs
Total Revenue =
SUM('Online Retail'[Revenue])

Total Orders =
DISTINCTCOUNT('Online Retail'[InvoiceNo])

Total Customers =
DISTINCTCOUNT('Online Retail'[CustomerID])

Items Sold =
SUM('Online Retail'[Quantity])

AOV =
DIVIDE([Total Revenue], [Total Orders])

## Time Intelligence (requires Date table relationship)
Revenue PM =
CALCULATE([Total Revenue], DATEADD('Date'[Date], -1, MONTH))

Revenue LY =
CALCULATE([Total Revenue], SAMEPERIODLASTYEAR('Date'[Date]))

MoM Revenue % =
DIVIDE([Total Revenue] - [Revenue PM], [Revenue PM])

YoY Revenue % =
DIVIDE([Total Revenue] - [Revenue LY], [Revenue LY])

## Formatting
- Total Revenue: Currency
- MoM Revenue % and YoY Revenue %: Percentage (1–2 decimals)
- AOV: Currency
