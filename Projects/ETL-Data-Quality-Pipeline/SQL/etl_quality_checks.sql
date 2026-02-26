-- ETL Data Quality Checks
-- Dataset: Online Retail
-- Purpose: validate raw transactional data before loading into reporting-ready output

----------------------------------------------------
-- 1) Check total raw row count
----------------------------------------------------
SELECT COUNT(*) AS RawRowCount
FROM online_retail;

----------------------------------------------------
-- 2) Check cancellation rows
----------------------------------------------------
SELECT COUNT(*) AS CancellationRows
FROM online_retail
WHERE InvoiceNo LIKE 'C%';

----------------------------------------------------
-- 3) Check invalid quantity rows
----------------------------------------------------
SELECT COUNT(*) AS InvalidQuantityRows
FROM online_retail
WHERE Quantity <= 0;

----------------------------------------------------
-- 4) Check invalid unit price rows
----------------------------------------------------
SELECT COUNT(*) AS InvalidUnitPriceRows
FROM online_retail
WHERE UnitPrice <= 0;

----------------------------------------------------
-- 5) Check missing customer IDs
----------------------------------------------------
SELECT COUNT(*) AS NullCustomerRows
FROM online_retail
WHERE CustomerID IS NULL;

----------------------------------------------------
-- 6) Check rows that pass quality filters
----------------------------------------------------
SELECT COUNT(*) AS ValidRows
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

----------------------------------------------------
-- 7) Revenue validation on clean rows
----------------------------------------------------
SELECT
    SUM(Quantity * UnitPrice) AS ValidRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;
