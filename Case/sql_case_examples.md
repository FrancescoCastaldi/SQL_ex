
# SQL CASE Examples: Transforming Rows into Columns

## 1. Using `CASE` to Transform Rows into Columns

When you want to transform rows into columns based on a specific condition, the `CASE` statement is a useful tool. It can be used in combination with aggregation functions like `SUM`, `COUNT`, etc., to pivot data.

### Example 1: Summing Salaries by Department

Suppose you have the following `Employee` table:

| id | name      | department | salary |
|----|-----------|------------|--------|
| 1  | Alice     | HR         | 5000   |
| 2  | Bob       | HR         | 6000   |
| 3  | Charlie   | IT         | 7000   |
| 4  | David     | IT         | 8000   |
| 5  | Eve       | Marketing  | 6500   |
| 6  | Frank     | Marketing  | 5500   |
| 7  | Grace     | HR         | 5000   |

To transform rows into columns, summing salaries by department:

```sql
SELECT
    SUM(CASE WHEN department = 'HR' THEN salary ELSE 0 END) AS HR,
    SUM(CASE WHEN department = 'IT' THEN salary ELSE 0 END) AS IT,
    SUM(CASE WHEN department = 'Marketing' THEN salary ELSE 0 END) AS Marketing
FROM Employee;
```

**Output:**

| HR   | IT   | Marketing |
|------|------|-----------|
| 16000 | 15000 | 12000 |

- `CASE` checks if the department matches the one specified.
- If the department matches, it sums the salary; otherwise, it adds 0.

### Example 2: Using `CASE` for Conditional Aggregation

You can also use `CASE` to calculate values conditionally within an aggregate function.

```sql
SELECT
    department,
    COUNT(CASE WHEN salary > 6000 THEN 1 ELSE NULL END) AS high_salary_count
FROM Employee
GROUP BY department;
```

**Output:**

| department | high_salary_count |
|------------|-------------------|
| HR         | 1                 |
| IT         | 2                 |
| Marketing  | 1                 |

- This query counts how many employees in each department have a salary greater than 6000.

## 2. Combining `CASE` with `GROUP BY`

Another way to transform data is by combining `CASE` with `GROUP BY`. You can use `CASE` to categorize or split data into groups, then apply aggregation functions.

### Example 3: Finding the Maximum Salary in Each Department

```sql
SELECT
    department,
    MAX(CASE WHEN department = 'HR' THEN salary ELSE NULL END) AS HR_Max_Salary,
    MAX(CASE WHEN department = 'IT' THEN salary ELSE NULL END) AS IT_Max_Salary,
    MAX(CASE WHEN department = 'Marketing' THEN salary ELSE NULL END) AS Marketing_Max_Salary
FROM Employee
GROUP BY department;
```

**Output:**

| department | HR_Max_Salary | IT_Max_Salary | Marketing_Max_Salary |
|------------|---------------|---------------|----------------------|
| HR         | 6000          | NULL          | NULL                 |
| IT         | NULL          | 8000          | NULL                 |
| Marketing  | NULL          | NULL          | 6500                 |

- Here, we used `MAX` in combination with `CASE` to find the maximum salary for each department.

## Conclusion

The `CASE` statement in SQL is a powerful way to perform conditional logic and pivot data. By combining `CASE` with aggregation functions and `GROUP BY`, you can effectively transform rows into columns and perform advanced data transformations.

