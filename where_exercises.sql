USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name, last_name
FROM employees
WHERE first_name OR ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
WHERE first_name OR ('Irena', 'Vidya', 'Maya') AND gender = 'M';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT '%qu%';