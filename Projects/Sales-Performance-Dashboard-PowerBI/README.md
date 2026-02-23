# Sales Performance Dashboard (Power BI)

**Focus:** BI / Data Analytics (Power BI, DAX, Power Query)  
**Goal:** Build an executive-ready sales dashboard from raw transactional data.

## What this dashboard answers
- Total Revenue, Total Orders, Total Customers, AOV
- Monthly revenue trend
- Top customers by revenue
- Top products by revenue and quantity
- MoM% and YoY% performance trends

## Dataset
Public transactional dataset (Online Retail / Online Retail II).  
See: `Data/data_source.md`

## Key work I did
- Cleaned cancellations/returns and invalid values in **Power Query**
- Created a proper **Date table** and relationship for time intelligence
- Built **DAX KPI measures** (Revenue, Orders, Customers, AOV, MoM%, YoY%)
- Designed a multi-page dashboard (Executive → Customer → Product → Trends)

## How to reproduce
1) Download dataset (see `Data/data_source.md`)
2) Apply Power Query steps (`Powerbi/power_query_steps.md`)
3) Build model + Date table (`Powerbi/model_notes.md`)
4) Create DAX measures (`Powerbi/dax_measures.md`)
5) Build visuals using the spec below

## Dashboard pages (spec)
**Page 1 — Executive Overview**
- Cards: Total Revenue, Total Orders, Total Customers, AOV
- Line: Revenue by Month
- Bar: Revenue by Country (Top 10)

**Page 2 — Customer Behavior**
- Bar: Top 10 Customers by Revenue
- Line: Total Customers by Month
- Table: CustomerID + Revenue + Orders + AOV (Top 20)

**Page 3 — Product Performance**
- Bar: Top 10 Products by Revenue
- Bar: Top 10 Products by Items Sold

**Page 4 — Trends**
- Line: MoM Revenue %
- Line: YoY Revenue %
- Line: Rolling 3M Revenue (optional)

## Screenshots

## SQL validation (optional)
See: `SQL/kpi_queries.sql`
