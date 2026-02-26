-- ETL Pipeline Steps (SQL-style documentation)
-- Dataset: Online Retail

----------------------------------------------------
-- STEP 1: Extract raw source data
----------------------------------------------------
SELECT *
FROM online_retail;

----------------------------------------------------
-- STEP 2: Transform / clean raw data
-- Apply business rules and derive Revenue
----------------------------------------------------
SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    (Quantity * UnitPrice) AS Revenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

----------------------------------------------------
-- STEP 3: Load into clean reporting-ready table
----------------------------------------------------
-- Example target table:
-- clean_online_retail

INSERT INTO clean_online_retail (
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    Revenue
)
SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    (Quantity * UnitPrice) AS Revenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;
