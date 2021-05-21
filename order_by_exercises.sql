USE employees;

SELECT first_name, last_name
FROM employees
WHERE last_name IN ('Irene', 'Vidya', 'Maya') ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name AND first_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT first_name, last_name
FROM employees
WHERE first_name OR ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;

-- SELECT first_name, last_name
-- FROM employees
-- WHERE last_name LIKE 'e%' AND '%e';
--
-- SELECT first_name, last_name
-- FROM employees
-- WHERE last_name LIKE '%q%' AND NOT '%qu%';