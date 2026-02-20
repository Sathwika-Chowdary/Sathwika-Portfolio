# Sales Performance Dashboard (Power BI) — Online Retail

## Goal
Build an executive dashboard to track revenue performance and explain growth drivers using a real transactional dataset.

## Business Questions
- How is revenue trending over time (smoothed vs actual)?
- Is growth driven by more orders or higher order value (AOV)?
- Which countries/products/customers are driving revenue changes?

## Dataset
Online Retail dataset (UCI Machine Learning Repository).  
Details and cleaning steps: `data/data_source.md`

## Data Preparation (Power Query)
- Removed cancellations (InvoiceNo starting with "C")
- Filtered Quantity > 0 and UnitPrice > 0
- Removed null CustomerID rows
- Added Revenue column

## Modeling
- Date table for time intelligence (YoY/MoM)
- Relationship: Online Retail[InvoiceDate_Date] → Date[Date]

## KPIs
- Total Revenue, Total Orders, Total Customers, AOV
- YoY Revenue %, YoY Orders %, YoY AOV %
- Revenue 3M Rolling, Revenue Change YoY

## Dashboard Pages
1. Executive Overview — KPIs, revenue trend, country revenue
2. Customer Behavior — top customers + customer trend
3. Product Performance — top products by revenue and volume
4. Trends & Drivers — YoY trends + order vs AOV decomposition + drivers

## Preview
![Executive Overview](assets/01_executive_overview.png)
![Customer Behavior](assets/02_customer_behavior.png)
![Product Performance](assets/03_product_performance.png)
![Trends & Drivers](assets/04_trends_drivers.png)

## Files
- DAX measures: `powerbi/dax_measures.md`
- Data source + cleaning: `data/data_source.md`

## Credits
Dataset: Online Retail, UCI Machine Learning Repository (CC BY 4.0).
