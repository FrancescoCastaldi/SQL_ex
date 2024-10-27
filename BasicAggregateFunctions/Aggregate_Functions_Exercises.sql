
-- Exercise 1: Use COUNT() to find the number of employees in each department
SELECT department, COUNT(*) AS NumberOfEmployees
FROM Employees
GROUP BY department;

-- Exercise 2: Use SUM() to calculate total sales for each region
SELECT region, SUM(sales) AS TotalSales
FROM SalesData
GROUP BY region;

-- Exercise 3: Use AVG() to find the average salary in each department
SELECT department, AVG(salary) AS AverageSalary
FROM Employees
GROUP BY department;

-- Exercise 4: Use MIN() to find the lowest price of products in each category
SELECT category, MIN(price) AS LowestPrice
FROM Products
GROUP BY category;

-- Exercise 5: Use MAX() to find the highest score in each game level
SELECT level, MAX(score) AS HighestScore
FROM GameScores
GROUP BY level;
