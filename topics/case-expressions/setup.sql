-- Sample dataset for CASE expression exercises
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employee (id, name, department, salary) VALUES
    (1, 'Alice', 'HR', 5000),
    (2, 'Bob', 'HR', 6000),
    (3, 'Charlie', 'IT', 7000),
    (4, 'David', 'IT', 8000),
    (5, 'Eve', 'Marketing', 6500),
    (6, 'Frank', 'Marketing', 5500),
    (7, 'Grace', 'HR', 5000);
