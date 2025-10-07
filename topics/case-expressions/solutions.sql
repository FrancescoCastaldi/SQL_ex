-- Solutions for CASE Expression Exercises

-- Solution 1
SELECT
    SUM(CASE WHEN department = 'HR' THEN salary ELSE 0 END) AS HR,
    SUM(CASE WHEN department = 'IT' THEN salary ELSE 0 END) AS IT,
    SUM(CASE WHEN department = 'Marketing' THEN salary ELSE 0 END) AS Marketing
FROM Employee;

-- Solution 2
SELECT
    department,
    COUNT(CASE WHEN salary > 6000 THEN 1 END) AS high_salary_count
FROM Employee
GROUP BY department;

-- Solution 3
SELECT
    name,
    department,
    CASE
        WHEN salary >= 6500 THEN 'Senior'
        ELSE 'Standard'
    END AS salary_band
FROM Employee;
