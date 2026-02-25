-- SQL Analytics Case Study
-- Dataset: Online Retail

----------------------------------------------------
-- 1) Monthly Revenue Trend
----------------------------------------------------
SELECT
    YEAR(InvoiceDate) AS SalesYear,
    MONTH(InvoiceDate) AS SalesMonth,
    SUM(Quantity * UnitPrice) AS MonthlyRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY SalesYear, SalesMonth;

----------------------------------------------------
-- 2) Top 10 Customers by Revenue
----------------------------------------------------
SELECT TOP 10
    CustomerID,
    SUM(Quantity * UnitPrice) AS CustomerRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY CustomerRevenue DESC;

----------------------------------------------------
-- 3) Top 10 Products by Revenue
----------------------------------------------------
SELECT TOP 10
    Description,
    SUM(Quantity * UnitPrice) AS ProductRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
GROUP BY Description
ORDER BY ProductRevenue DESC;

----------------------------------------------------
-- 4) Top 10 Products by Quantity Sold
----------------------------------------------------
SELECT TOP 10
    Description,
    SUM(Quantity) AS TotalUnitsSold
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
GROUP BY Description
ORDER BY TotalUnitsSold DESC;

----------------------------------------------------
-- 5) Revenue by Country
----------------------------------------------------
SELECT
    Country,
    SUM(Quantity * UnitPrice) AS CountryRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL
GROUP BY Country
ORDER BY CountryRevenue DESC;
