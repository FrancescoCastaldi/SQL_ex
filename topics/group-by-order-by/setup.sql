-- Sample dataset for GROUP BY and ORDER BY exercises
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    region VARCHAR(50),
    product VARCHAR(100),
    amount DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO Sales (sale_id, region, product, amount, sale_date) VALUES
    (1, 'North', 'Bicycle', 300.00, '2024-01-10'),
    (2, 'South', 'Helmet', 50.00, '2024-01-11'),
    (3, 'North', 'Lock', 20.00, '2024-01-11'),
    (4, 'East', 'Gloves', 25.00, '2024-01-12'),
    (5, 'South', 'Bicycle', 280.00, '2024-01-12'),
    (6, 'North', 'Helmet', 45.00, '2024-01-13');
