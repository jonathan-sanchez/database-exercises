USE employees;

#1 In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:

SELECT DISTINCT title
FROM titles;

#2 Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:

SELECT last_name FROM employees
WHERE last_name LIKE 'E%e' GROUP BY last_name;

#3 Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%e' GROUP BY first_name, last_name;

#4 Find the unique last names with a 'q' but not 'qu'. Your results should be

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#5 Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others

SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#6 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be

SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;