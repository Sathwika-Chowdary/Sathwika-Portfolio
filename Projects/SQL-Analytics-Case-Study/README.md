# SQL Analytics Case Study

## Overview
This project uses a public retail transactions dataset to perform SQL-based business analysis.  
It focuses on KPI validation, revenue trends, customer contribution, product performance, and country-level sales insights.

## Business Questions
- What is the total revenue after applying cleaning rules?
- How many distinct orders and customers are there?
- Which customers generate the most revenue?
- Which products generate the most revenue and volume?
- Which countries contribute the highest sales?
- How does monthly revenue trend over time?

## Dataset
This project uses the same Online Retail dataset as the Sales Performance Dashboard project.

## Cleaning Logic
The SQL queries apply the same cleaning assumptions used in the Power BI project:
- Remove cancellations (`InvoiceNo` starting with 'C')
- Keep only valid sales (`Quantity > 0`, `UnitPrice > 0`)
- Exclude null `CustomerID`

## Files
- Main case study queries: `SQL/case_study_queries.sql`
- KPI queries: `SQL/kpi_queries.sql`

## Analysis Covered
1. Revenue KPI validation  
2. Monthly revenue trend  
3. Top customers by revenue  
4. Top products by revenue  
5. Top products by quantity sold  
6. Revenue by country  

## Notes
This project complements the Power BI dashboard project by showing the SQL logic behind the same business metrics.

## Results Summary

The SQL analysis produced the following business insights:

- Core KPIs can be validated directly from the cleaned transaction table:
  - Total Revenue
  - Total Orders
  - Total Customers
  - Average Order Value (AOV)

- Monthly revenue trends can be grouped by year and month to show seasonality and sales variation over time.

- Customer-level analysis identifies the highest-value customers based on total revenue contribution.

- Product-level analysis highlights:
  - top products by total revenue
  - top products by total quantity sold

- Country-level analysis shows which geographic markets contribute the highest revenue and order volume.

## Example Output Snapshots
(Optional but recommended)
Add screenshots of SQL query results in an `assets/` folder and link them here later.
