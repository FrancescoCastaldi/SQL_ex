# SQL CASE Examples: Transforming Rows into Columns

The `CASE` expression is SQL's built-in way to add conditional logic to your queries. It is invaluable when you need to pivot data, build custom groupings, or flag records that meet certain rules.

## 1. Using `CASE` to Transform Rows into Columns

When you want to transform rows into columns based on a specific condition, the `CASE` statement is a useful tool. It can be used in combination with aggregation functions like `SUM`, `COUNT`, etc., to pivot data.

### Example: Summing salaries by department

```sql
SELECT
    SUM(CASE WHEN department = 'HR' THEN salary ELSE 0 END) AS HR,
    SUM(CASE WHEN department = 'IT' THEN salary ELSE 0 END) AS IT,
    SUM(CASE WHEN department = 'Marketing' THEN salary ELSE 0 END) AS Marketing
FROM Employee;
```

`CASE` evaluates each row and returns the salary only when the department matches the specified label. When used inside `SUM`, this effectively totals salaries per department on a single row.

### Example: Counting only the rows that match a condition

```sql
SELECT
    department,
    COUNT(CASE WHEN salary > 6000 THEN 1 END) AS high_salary_count
FROM Employee
GROUP BY department;
```

The expression inside `COUNT` yields `1` only when the salary is greater than 6000. All other rows produce `NULL`, which `COUNT` ignores.

## 2. Combining `CASE` with `GROUP BY`

Another way to transform data is by combining `CASE` with `GROUP BY`. You can use `CASE` to categorise or split data into groups, then apply aggregation functions.

```sql
SELECT
    department,
    MAX(CASE WHEN department = 'HR' THEN salary END) AS hr_max_salary,
    MAX(CASE WHEN department = 'IT' THEN salary END) AS it_max_salary,
    MAX(CASE WHEN department = 'Marketing' THEN salary END) AS marketing_max_salary
FROM Employee
GROUP BY department;
```

Here, we used `MAX` in combination with `CASE` to find the maximum salary for each department.

## Continue exploring

Run `setup.sql` to create the sample dataset, practise with the prompts in `exercises.sql`, and review your work alongside `solutions.sql`.
