-- Solutions for WHERE and GROUP BY Exercises

-- Solution 1
SELECT *
FROM Orders
WHERE amount > 50;

-- Solution 2
SELECT username
FROM Users
WHERE age > 30;

-- Solution 3
SELECT user_id, SUM(amount) AS total_spent
FROM Orders
GROUP BY user_id;

-- Solution 4
SELECT user_id, COUNT(order_id) AS order_count
FROM Orders
GROUP BY user_id;

-- Solution 5
SELECT user_id, AVG(amount) AS avg_order_amount
FROM Orders
GROUP BY user_id;
