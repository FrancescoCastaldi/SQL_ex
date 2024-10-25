
# SQL WHERE and GROUP BY Clauses

This repository provides an introduction to using the `WHERE` and `GROUP BY` clauses in SQL. It includes explanations and examples to help understand how these clauses work to filter and aggregate data.

## Topics Covered

- **WHERE Clause**: Filters rows based on specified conditions.
- **GROUP BY Clause**: Groups rows that share a property so that aggregate functions (e.g., SUM, COUNT) can be applied to each group.

Refer to `queries.sql` for practical examples and exercises.

## Example Usage

```sql
-- WHERE Clause
SELECT * FROM Orders WHERE amount > 100;

-- GROUP BY Clause
SELECT user_id, SUM(amount) AS total_spent FROM Orders GROUP BY user_id;
```

## Additional Resources
- [SQL WHERE Documentation](https://www.w3schools.com/sql/sql_where.asp)
- [SQL GROUP BY Documentation](https://www.w3schools.com/sql/sql_groupby.asp)
