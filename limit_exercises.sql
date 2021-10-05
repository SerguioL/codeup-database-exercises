USE employees;

show tables;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
limit 10;

SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

