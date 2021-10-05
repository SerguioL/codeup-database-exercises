USE employees;
# 3
SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ,last_name;

#4
SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name,first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
AND gender ='M'
ORDER BY first_name;
# 5
SELECT * FROM employees
WHERE last_name LIKE('%e%') ORDER BY emp_no DESC;

#4
SELECT last_name FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT last_name FROM employees
WHERE last_name LIKE('E%')
  AND last_name LIKE ('%E');

SELECT last_name FROM employees
WHERE last_name LIKE('%q%');

SELECT last_name FROM employees
WHERE last_name LIKE('%q%')
  AND last_name NOT LIKE '%qu%';