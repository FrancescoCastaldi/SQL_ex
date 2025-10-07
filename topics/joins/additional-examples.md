# Additional JOIN Examples

These examples demonstrate common JOIN patterns using the schema created in `setup.sql`.

## LEFT JOIN patterns

```sql
-- Employees with their departments (employees without a department return NULL)
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id;
```

```sql
-- Customers with their shipping address if present
SELECT c.name AS customer_name, s.address AS shipping_address
FROM Customers c
LEFT JOIN ShippingAddresses s ON c.id = s.customer_id;
```

```sql
-- Books with optional authors
SELECT b.title AS book_title, a.name AS author_name
FROM Books b
LEFT JOIN Authors a ON b.author_id = a.id;
```

```sql
-- Suppliers and the products they provide
SELECT s.name AS supplier_name, p.name AS product_name
FROM Suppliers s
LEFT JOIN Products p ON s.id = p.supplier_id;
```

## RIGHT JOIN patterns

```sql
-- Departments and their employees (departments without employees still appear)
SELECT d.name AS department_name, e.name AS employee_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.id;
```

```sql
-- Suppliers and the products they provide (ensures suppliers without products appear)
SELECT s.name AS supplier_name, p.name AS product_name
FROM Products p
RIGHT JOIN Suppliers s ON p.supplier_id = s.id;
```

```sql
-- Orders mapped to customers so customers without orders still appear
SELECT o.id AS order_id, c.name AS customer_name
FROM Orders o
RIGHT JOIN Customers c ON o.customer_id = c.id;
```

```sql
-- Authors alongside the books they wrote so that authors without books appear
SELECT a.name AS author_name, b.title AS book_title
FROM Books b
RIGHT JOIN Authors a ON b.author_id = a.id;
```
