
# Right Join Exercises

The following exercises are designed to help you practice and improve your understanding of the **RIGHT JOIN** in SQL. Each exercise focuses on retrieving data from two tables, ensuring that all records from the right table are included, even if there are no matching records in the left table.

---

### 1. Retrieve all orders and the corresponding customers, including customers who have not placed an order.

```sql
SELECT orders.order_id, customers.customer_name 
FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.id;
```

---

### 2. Get all employees and the departments they belong to, including departments with no employees.

```sql
SELECT employees.name AS employee_name, departments.name AS department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;
```

---

### 3. List all products and their suppliers, including suppliers who have not provided any products.

```sql
SELECT products.name AS product_name, suppliers.name AS supplier_name
FROM products
RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;
```

---

### 4. Show all students and the courses they are enrolled in, including courses without any students enrolled.

```sql
SELECT students.name AS student_name, courses.name AS course_name
FROM students
RIGHT JOIN courses ON students.course_id = courses.id;
```

---

### 5. Retrieve all projects and the employees working on them, including projects with no employees assigned.

```sql
SELECT projects.name AS project_name, employees.name AS employee_name
FROM projects
RIGHT JOIN employees ON projects.employee_id = employees.id;
```

---

### 6. Get all books and the authors who wrote them, including authors who haven't written any books.

```sql
SELECT books.title AS book_title, authors.name AS author_name
FROM books
RIGHT JOIN authors ON books.author_id = authors.id;
```

---

### 7. List all sales and the products sold, including products that have not been sold.

```sql
SELECT sales.sale_id, products.name AS product_name
FROM sales
RIGHT JOIN products ON sales.product_id = products.id;
```

---

### 8. Retrieve all flights and the corresponding pilots, including pilots who have not flown any flights.

```sql
SELECT flights.flight_number, pilots.name AS pilot_name
FROM flights
RIGHT JOIN pilots ON flights.pilot_id = pilots.id;
```

---

### 9. Get all reservations and their corresponding customers, including customers with no reservations.

```sql
SELECT reservations.reservation_id, customers.name AS customer_name
FROM reservations
RIGHT JOIN customers ON reservations.customer_id = customers.id;
```

---

### 10. Show all orders and the corresponding shipping information, including orders without shipping details.

```sql
SELECT orders.order_id, shipping.address AS shipping_address
FROM orders
RIGHT JOIN shipping ON orders.shipping_id = shipping.id;
```

---
