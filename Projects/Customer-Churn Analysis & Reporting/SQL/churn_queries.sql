-- Customer Churn Analysis Queries
-- Dataset: IBM Telco Customer Churn

----------------------------------------------------
-- 1) Overall churn counts
----------------------------------------------------
SELECT
    Churn,
    COUNT(*) AS CustomerCount
FROM telco_churn
GROUP BY Churn;

----------------------------------------------------
-- 2) Overall churn rate
----------------------------------------------------
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRatePercent
FROM telco_churn;

----------------------------------------------------
-- 3) Churn by contract type
----------------------------------------------------
SELECT
    Contract,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRatePercent
FROM telco_churn
GROUP BY Contract
ORDER BY ChurnRatePercent DESC;

----------------------------------------------------
-- 4) Churn by payment method
----------------------------------------------------
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS ChurnRatePercent
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY ChurnRatePercent DESC;

----------------------------------------------------
-- 5) Average monthly charges by churn
----------------------------------------------------
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS AvgMonthlyCharges
FROM telco_churn
GROUP BY Churn;

----------------------------------------------------
-- 6) Average tenure by churn
----------------------------------------------------
SELECT
    Churn,
    ROUND(AVG(tenure), 2) AS AvgTenure
FROM telco_churn
GROUP BY Churn;
