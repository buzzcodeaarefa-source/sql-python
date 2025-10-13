-- Sample table
CREATE TABLE Sales (
  SaleID INT PRIMARY KEY,
  Product VARCHAR(100),
  Qty INT,
  Price DECIMAL(10,2),
  SaleDate DATE
);

INSERT INTO Sales (SaleID, Product, Qty, Price, SaleDate) VALUES
(1, 'Laptop', 2, 1000.00, '2025-01-01'),
(2, 'Tablet', 5, 300.00, '2025-01-02'),
(3, 'Smartphone', 3, 800.00, '2025-01-03'),
(4, 'Laptop', 1, 1000.00, '2025-01-04'),
(5, 'Smartphone', 4, 800.00, '2025-01-05');

-- Queries

-- a) Total quantity sold per product
SELECT
  Product,
  SUM(Qty) AS TotalQty
FROM Sales
GROUP BY Product;

-- b) Average price per product
SELECT
  Product,
  AVG(Price) AS AvgPrice
FROM Sales
GROUP BY Product;

-- c) Max / Min price per product
SELECT
  Product,
  MAX(Price) AS MaxPrice,
  MIN(Price) AS MinPrice
FROM Sales
GROUP BY Product;

-- d) Filter by products that sold more than e.g. 3 units
SELECT
  Product,
  SUM(Qty) AS TotalQty
FROM Sales
GROUP BY Product
HAVING SUM(Qty) > 3
ORDER BY TotalQty DESC;

-- e) Count number of sales entries per product
SELECT
  Product,
  COUNT(*) AS SalesCount
FROM Sales
GROUP BY Product;
