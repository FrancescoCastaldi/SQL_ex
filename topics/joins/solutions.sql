-- Solutions for JOIN Exercises

-- Solution 1
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.id;

-- Solution 2
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id;

-- Solution 3
SELECT d.name AS department_name, e.name AS employee_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.id;

-- Solution 4
SELECT c.name AS customer_name, s.address
FROM Customers c
LEFT JOIN ShippingAddresses s ON c.id = s.customer_id;

-- Solution 5
SELECT b.title AS book_title, a.name AS author_name
FROM Books b
LEFT JOIN Authors a ON b.author_id = a.id;

-- Solution 6
SELECT s.name AS supplier_name, p.name AS product_name
FROM Products p
RIGHT JOIN Suppliers s ON p.supplier_id = s.id;

-- Solution 7
SELECT d.name AS department_name, s.name AS supplier_name
FROM Departments d
CROSS JOIN Suppliers s;
