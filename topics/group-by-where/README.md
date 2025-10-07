# SQL WHERE and GROUP BY Clauses

Use the `WHERE` clause to filter rows before they are aggregated, and `GROUP BY` to gather rows into sets so that aggregate functions apply to each group individually. This folder contains:

- `setup.sql` – creates a simple `Users`/`Orders` dataset.
- `exercises.sql` – practice prompts.
- `solutions.sql` – reference implementations.

## Example usage

```sql
-- WHERE Clause
SELECT *
FROM Orders
WHERE amount > 100;

-- GROUP BY Clause
SELECT user_id, SUM(amount) AS total_spent
FROM Orders
GROUP BY user_id;
```

## Additional resources
- [SQL WHERE Documentation](https://www.w3schools.com/sql/sql_where.asp)
- [SQL GROUP BY Documentation](https://www.w3schools.com/sql/sql_groupby.asp)
