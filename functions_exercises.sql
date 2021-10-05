
USE employees;

SELECT CONCAT(first_name, ' ' ,last_name) AS'Employee Info', emp_no FROM employees
WHERE first_name LIKE 'e%e';

SELECT CONCAT(first_name, ' ' ,last_name, ' ' ,birth_date ) AS'Employee Info', emp_no FROM employees
WHERE month (birth_date) = 12 AND day(birth_date) =25;

SELECT CONCAT(first_name, ' ' ,last_name, ' ' ,hire_date ) AS'Employee Info', emp_no FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999 AND month (birth_date) = 12 AND day(birth_date) =25
ORDER BY hire_date ASC ;

SELECT DATEDIFF(NOW(),hire_date),CONCAT(first_name, ' ' ,last_name, ' ' ,hire_date ) AS'Employee Info', emp_no FROM employees
WHERE month (birth_date) = 12 AND day(birth_date) =25
ORDER BY hire_date ASC;

SELECT * FROM employees;