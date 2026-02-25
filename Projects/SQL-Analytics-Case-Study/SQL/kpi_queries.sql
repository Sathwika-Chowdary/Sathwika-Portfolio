-- KPI validation queries

-- 1) Total Revenue
SELECT
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

-- 2) Total Orders
SELECT
    COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

-- 3) Total Customers
SELECT
    COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

-- 4) Average Order Value
SELECT
    SUM(Quantity * UnitPrice) / NULLIF(COUNT(DISTINCT InvoiceNo), 0) AS AOV
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;
