# Difference between ORDER BY and GROUP BY in SQL

`ORDER BY` and `GROUP BY` serve different purposes in SQL queries. This folder includes a dataset (`setup.sql`), guided prompts (`exercises.sql`), and reference answers (`solutions.sql`) so you can practise the concepts described below.

## GROUP BY

- **Purpose**: Groups rows into sets based on one or more specified columns.
- **Main Use**: Used with aggregation functions like `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`, etc., to calculate aggregated values for each group.
- **How it Works**: Rows with identical values in the specified columns are combined into a single group.

```sql
SELECT department, COUNT(*) AS num_employees
FROM Employee
GROUP BY department;
```

This example counts the number of employees in each department. `GROUP BY department` creates groups for each department, and `COUNT(*)` calculates the number of employees in each group.

## ORDER BY

- **Purpose**: Sorts the results based on one or more specified columns.
- **Main Use**: Returns results in a specified ascending or descending order.
- **How it Works**: `ORDER BY` does not group rows; it simply arranges all rows in the result set according to the specified criteria.

```sql
SELECT name, salary
FROM Employee
ORDER BY salary DESC;
```

This example sorts all employees based on their salary in descending order.

## Combined example

When using `GROUP BY` and `ORDER BY` together, you first obtain aggregated groups, then you can order these groups.

```sql
SELECT department, COUNT(*) AS num_employees
FROM Employee
GROUP BY department
ORDER BY num_employees DESC;
```

Use the prompts in `exercises.sql` to practise pairing both clauses and compare with `solutions.sql` once you are done.
