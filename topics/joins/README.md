# Understanding SQL Joins

A **JOIN** in SQL combines rows from two or more tables based on a related column between them. This folder contains:

- `setup.sql` – creates a compact schema with departments, employees, customers, books, suppliers, and related tables.
- `exercises.sql` – guided prompts covering inner, left, right, and cross joins.
- `solutions.sql` – reference answers for the prompts.
- `additional-examples.md` – extra sample queries you can adapt for more practice.

## Join types at a glance

### INNER JOIN
Returns only the rows where there is a match in both tables.

```sql
SELECT employees.name, departments.name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;
```

### LEFT JOIN (or LEFT OUTER JOIN)
Returns all the rows from the left table and the matching rows from the right table. If there is no match, `NULL` values are returned for columns from the right table.

```sql
SELECT employees.name, departments.name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;
```

### RIGHT JOIN (or RIGHT OUTER JOIN)
The opposite of a left join. Returns all the rows from the right table and the matching rows from the left table.

```sql
SELECT employees.name, departments.name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;
```

### FULL OUTER JOIN
Returns all the rows when there is a match in either the left or the right table. Rows with no match will have `NULL` in the corresponding columns.

```sql
SELECT employees.name, departments.name
FROM employees
FULL OUTER JOIN departments ON employees.department_id = departments.id;
```

### CROSS JOIN
Produces the Cartesian product of the two tables: every row from the left table paired with every row from the right table.

```sql
SELECT employees.name, departments.name
FROM employees
CROSS JOIN departments;
```

Work through `exercises.sql` to reinforce each join type and consult `additional-examples.md` when you need more reference patterns.
