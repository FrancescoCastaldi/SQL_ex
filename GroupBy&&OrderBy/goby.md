
# Difference between ORDER BY and GROUP BY in SQL

`ORDER BY` and `GROUP BY` are two distinct SQL clauses with different purposes.

## 1. GROUP BY

- **Purpose**: Groups rows into sets based on one or more specified columns.
- **Main Use**: Used in combination with aggregation functions like `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`, etc., to calculate aggregated values for each group.
- **How it Works**: When using `GROUP BY`, rows with identical values in the specified columns are combined into a single group.

### Example of GROUP BY
```sql
SELECT department, COUNT(*) AS num_employees
FROM Employee
GROUP BY department;
```
This example counts the number of employees in each department. The `GROUP BY department` clause creates groups of rows for each department, and `COUNT(*)` calculates the number of employees in each group.

## 2. ORDER BY

- **Purpose**: Sorts the results based on one or more specified columns.
- **Main Use**: Used to return results in a specified ascending or descending order based on the columns provided.
- **How it Works**: `ORDER BY` does not group rows; it simply arranges all rows in the result set according to the specified criteria.

### Example of ORDER BY
```sql
SELECT name, salary
FROM Employee
ORDER BY salary DESC;
```
This example sorts all employees based on their salary in descending order. Here, `ORDER BY salary DESC` specifies that the results should be ordered from the highest to the lowest salary.

## Key Differences

| Feature            | `GROUP BY`                                       | `ORDER BY`                          |
|--------------------|--------------------------------------------------|-------------------------------------|
| **Function**       | Groups rows into sets                            | Sorts the rows in the result set    |
| **Used with**      | Aggregation functions (`SUM`, `COUNT`, etc.)     | No aggregation requirement          |
| **Result**         | A single row per group                           | All rows, ordered                   |
| **Order**          | Does not guarantee the order of results          | Specifies the order of results      |
| **Position**       | Usually appears before `ORDER BY`                | Appears at the end of the query     |

## Combined Example

When using `GROUP BY` and `ORDER BY` together, you first obtain the aggregated groups, then you can order these groups.

```sql
SELECT department, COUNT(*) AS num_employees
FROM Employee
GROUP BY department
ORDER BY num_employees DESC;
```

In this case, the query groups employees by `department`, counts the number of employees in each group, and then orders the results by the number of employees in descending order.
