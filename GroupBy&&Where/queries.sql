
-- WHERE and GROUP BY Exercises

-- Sample table setup
-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);



-- Insert sample data
INSERT INTO Users (user_id, username, age) VALUES
(1, 'francesco', 35),
(2, 'alice', 29),
(3, 'bob', 42);

INSERT INTO Orders (order_id, user_id, product_name, amount) VALUES
(1, 1, 'Bicycle', 300.00),
(2, 2, 'Helmet', 50.00),
(3, 1, 'Lock', 20.00),
(4, 3, 'Gloves', 25.00);

-- WHERE Clause Examples
-- 1. Select orders with an amount greater than 50
SELECT * FROM Orders WHERE amount > 50;

-- 2. Select users who are over 30 years old
SELECT * FROM Users WHERE age > 30;

-- GROUP BY Clause Examples
-- 1. Calculate total spending per user
SELECT user_id, SUM(amount) AS total_spent FROM Orders GROUP BY user_id;

-- 2. Count the number of orders per user
SELECT user_id, COUNT(order_id) AS order_count FROM Orders GROUP BY user_id;

-- 3. Get the average order amount per user
SELECT user_id, AVG(amount) AS avg_order_amount FROM Orders GROUP BY user_id;
