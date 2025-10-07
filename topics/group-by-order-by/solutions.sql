-- Solutions for GROUP BY and ORDER BY Exercises

-- Solution 1
SELECT region, SUM(amount) AS total_sales
FROM Sales
GROUP BY region
ORDER BY total_sales DESC;

-- Solution 2
SELECT product, COUNT(*) AS sales_count
FROM Sales
GROUP BY product
ORDER BY product ASC;

-- Solution 3
SELECT sale_date, AVG(amount) AS avg_sale_amount
FROM Sales
GROUP BY sale_date
ORDER BY sale_date ASC;

-- Solution 4
SELECT region, product, SUM(amount) AS total_sales
FROM Sales
GROUP BY region, product
ORDER BY region ASC, product ASC;

-- Solution 5
SELECT region, MAX(amount) AS max_sale
FROM Sales
GROUP BY region
ORDER BY region ASC;
