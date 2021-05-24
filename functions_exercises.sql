USE employees;
#1 Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e' ORDER BY last_name;

#2 Find all employees born on Christmas:

SELECT first_name, last_name, birth_date
FROM employees
WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

#3 Find all employees hired in the 90s and born on Christmas:

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-12-31' AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

#4 Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-12-31' AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

#5 For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT first_name, last_name, DATEDIFF(CURDATE(), hire_date) AS 'days employed'
FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-12-31' AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;