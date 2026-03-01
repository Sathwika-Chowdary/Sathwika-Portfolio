# Customer Churn Analysis & Reporting

## Overview
This project analyzes customer churn using a public telco customer dataset and documents SQL-based churn analysis with reporting-ready business insights.

## Business Goal
The goal is to identify churn patterns and answer:
- What is the overall churn rate?
- Which customer segments have the highest churn?
- How do contract type, payment method, tenure, and monthly charges relate to churn?
- Which customer groups appear to be highest risk?

## Dataset
IBM Telco Customer Churn sample dataset.

Dataset notes: `Data/data_source.md`

## Analysis Included
This project includes:
- SQL churn analysis queries
- churn KPI calculations
- segment-level churn breakdowns
- reporting guidance for dashboards / business interpretation

## Project Files
- Data notes: `Data/data_source.md`
- SQL analysis: `SQL/churn_queries.sql`
- Reporting notes: `Reporting/reporting_notes.md`

## SQL Analysis Coverage
- Overall churn counts
- Overall churn rate
- Churn by contract type
- Churn by payment method
- Average monthly charges by churn
- Average tenure by churn

## Reporting Focus
- Executive churn overview
- Segment-level churn analysis
- Customer value / risk indicators

## Results Summary

The churn analysis supports the following business insights:

- The overall churn rate can be measured directly from the `Churn` field.
- Contract type is a key churn driver, especially when comparing month-to-month customers against longer-term contracts.
- Payment method patterns can reveal higher-risk customer groups.
- Customers who churn often differ in average tenure and monthly charges compared with retained customers.
- Segment-level churn reporting helps identify where retention strategies should be focused.

## Example Output Table

| Analysis Area | Example Insight |
|---|---|
| Overall Churn | Churn rate can be calculated as the percentage of customers with `Churn = 'Yes'`. |
| Contract Analysis | Month-to-month contracts are typically more churn-prone than long-term contracts. |
| Payment Analysis | Certain payment methods may show higher churn concentration. |
| Tenure Analysis | Lower-tenure customers are often more likely to churn. |
| Charge Analysis | Monthly charges can be compared between churned and retained groups. |
