CREATE DATABASE assignmant4;
GO
USE assignmant4;

CREATE TABLE Products (
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME NVARCHAR(50)
);

INSERT INTO Products (PRODUCT_ID, PRODUCT_NAME)
VALUES
    (100, 'Nokia'),
    (200, 'IPhone'),
    (300, 'Samsung');
GO

CREATE TABLE Sales (
    SALE_ID INT PRIMARY KEY,
    PRODUCT_ID INT FOREIGN KEY REFERENCES Products(PRODUCT_ID),
    YEAR INT,
    QUANTITY INT,
    PRICE INT
);

-- Insert data into the sales table
INSERT INTO Sales (SALE_ID, PRODUCT_ID, YEAR, QUANTITY, PRICE)
VALUES
    (1, 100, 2010, 25, 5000),
    (2, 100, 2011, 16, 5000),
    (3, 100, 2012, 8, 5000),
    (4, 200, 2010, 10, 9000),
    (5, 200, 2011, 15, 9000),
    (6, 200, 2012, 20, 9000),
    (7, 300, 2010, 20, 7000),
    (8, 300, 2011, 18, 7000),
    (9, 300, 2012, 20, 7000);
GO

-- 1. Find products with no sales
SELECT PRODUCT_NAME
FROM Products
WHERE PRODUCT_ID NOT IN (SELECT PRODUCT_ID FROM Sales);
GO

-- 2. Find products whose sales decreased in 2012 compared to 2011
SELECT p.PRODUCT_NAME
FROM Products p
JOIN Sales s2011 ON p.PRODUCT_ID = s2011.PRODUCT_ID AND s2011.YEAR = 2011
JOIN Sales s2012 ON p.PRODUCT_ID = s2012.PRODUCT_ID AND s2012.YEAR = 2012
WHERE s2012.QUANTITY < s2011.QUANTITY;
GO

-- 3. Top product sold in each year
SELECT s.YEAR, p.PRODUCT_NAME, s.QUANTITY
FROM Sales s
JOIN Products p ON s.PRODUCT_ID = p.PRODUCT_ID
WHERE s.QUANTITY = (
    SELECT MAX(QUANTITY)
    FROM Sales
    WHERE YEAR = s.YEAR
);
GO

-- 4. Total sales of each product
SELECT p.PRODUCT_NAME, SUM(s.QUANTITY * s.PRICE) AS TOTAL_SALES
FROM Products p
JOIN Sales s ON p.PRODUCT_ID = s.PRODUCT_ID
GROUP BY p.PRODUCT_NAME;
GO

-- 5. Products with continuous increase in sales every year
SELECT p.PRODUCT_NAME
FROM Products p
WHERE NOT EXISTS (
    SELECT 1
    FROM Sales s1
    JOIN Sales s2 ON s1.PRODUCT_ID = s2.PRODUCT_ID AND s1.YEAR = s2.YEAR - 1
    WHERE p.PRODUCT_ID = s1.PRODUCT_ID AND s1.QUANTITY >= s2.QUANTITY
);
GO

-- 6. Products with quantity sold in a year greater than the average across all years
SELECT  p.PRODUCT_NAME, s.YEAR, s.QUANTITY
FROM Products p
JOIN Sales s ON p.PRODUCT_ID = s.PRODUCT_ID
WHERE s.QUANTITY > (
    SELECT AVG(QUANTITY)
    FROM Sales
    WHERE PRODUCT_ID = p.PRODUCT_ID
)

GO

-- 7. Compare sales of IPhone and Samsung in each year
SELECT s.YEAR,
       SUM(CASE WHEN p.PRODUCT_NAME = 'IPhone' THEN s.QUANTITY ELSE 0 END) AS IPHONE_QUANT,
       SUM(CASE WHEN p.PRODUCT_NAME = 'Samsung' THEN s.QUANTITY ELSE 0 END) AS SAM_QUANT,
       SUM(CASE WHEN p.PRODUCT_NAME = 'IPhone' THEN s.PRICE ELSE 0 END) AS IPHONE_PRICE,
       SUM(CASE WHEN p.PRODUCT_NAME = 'Samsung' THEN s.PRICE ELSE 0 END) AS SAM_PRICE
FROM Sales s
JOIN Products p ON s.PRODUCT_ID = p.PRODUCT_ID
WHERE p.PRODUCT_NAME IN ('IPhone', 'Samsung')
GROUP BY s.YEAR;
GO

-- 8. Number of products sold in each year
SELECT YEAR, SUM(QUANTITY) AS TOTAL_PRODUCTS_SOLD
FROM Sales
GROUP BY YEAR;
GO

-- 9. Identify duplicate records in a table
-- To identify duplicate records, group rows by relevant columns using GROUP BY and use HAVING COUNT(*) > 1 to filter groups with duplicates. 
-- This highlights records with identical values in the specified columns. Review results to decide on further actions. 
SELECT PRODUCT_ID, YEAR, COUNT(*) AS DUPLICATE_COUNT
FROM Sales
GROUP BY PRODUCT_ID, YEAR
HAVING COUNT(*) > 1;
GO
