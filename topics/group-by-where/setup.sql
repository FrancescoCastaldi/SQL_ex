-- Sample schema and data for WHERE and GROUP BY exercises
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Users (user_id, username, age) VALUES
    (1, 'francesco', 35),
    (2, 'alice', 29),
    (3, 'bob', 42);

INSERT INTO Orders (order_id, user_id, product_name, amount) VALUES
    (1, 1, 'Bicycle', 300.00),
    (2, 2, 'Helmet', 50.00),
    (3, 1, 'Lock', 20.00),
    (4, 3, 'Gloves', 25.00);
