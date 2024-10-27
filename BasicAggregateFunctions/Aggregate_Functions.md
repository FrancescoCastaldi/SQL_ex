
# Basic Aggregate Functions in SQL

SQL aggregate functions allow you to perform calculations and summarize data in a structured way.
Below are some of the essential aggregate functions along with operators often used in SQL queries.

---

## Basic SQL Operators

1. **`=`**: Checks for equality.
   ```sql
   SELECT * FROM Employees WHERE department = 'Sales';
   ```

2. **`<>` or `!=`**: Checks for inequality.
   ```sql
   SELECT * FROM Employees WHERE department <> 'Marketing';
   ```

3. **`<`, `>`, `<=`, `>=`**: Comparison operators for numeric values.
   ```sql
   SELECT * FROM Products WHERE price > 100;
   ```

4. **`%`**: Modulo operator to get the remainder.
   ```sql
   SELECT * FROM Cinema WHERE id % 2 <> 0; -- Selects rows with odd IDs
   ```

---

## Aggregate Functions

### 1. COUNT()
The `COUNT()` function returns the number of rows that match a specified condition.

#### Example:
```sql
SELECT COUNT(*) FROM Employees WHERE department = 'Sales';
```

### 2. SUM()
The `SUM()` function calculates the sum of a numeric column.

#### Example:
```sql
SELECT SUM(salary) FROM Employees WHERE department = 'Sales';
```

### 3. AVG()
The `AVG()` function calculates the average value of a numeric column.

#### Example:
```sql
SELECT AVG(salary) FROM Employees WHERE department = 'Sales';
```

### 4. MIN()
The `MIN()` function retrieves the minimum value of a column.

#### Example:
```sql
SELECT MIN(salary) FROM Employees;
```

### 5. MAX()
The `MAX()` function retrieves the maximum value of a column.

#### Example:
```sql
SELECT MAX(salary) FROM Employees;
```

### Combining Conditions with `WHERE`
You can combine conditions using SQL operators in the `WHERE` clause:

```sql
SELECT department, COUNT(*) FROM Employees
WHERE department <> 'HR' AND salary >= 50000
GROUP BY department;
```

These functions and operators allow powerful and efficient data manipulation in SQL.
