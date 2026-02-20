-- KPI validation using SQL (after applying the same cleaning rules)

-- Total Revenue
SELECT SUM(Quantity * UnitPrice) AS TotalRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

-- Total Orders
SELECT COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

-- Total Customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;
