USE employees;

-- #1
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC LIMIT 10;

-- #2
SELECT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5;

-- #3
SELECT emp_no
FROM salaries
ORDER BY salary DESC LIMIT 5 OFFSET 45;