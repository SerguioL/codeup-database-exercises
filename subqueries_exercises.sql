USE employees;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees
    WHERE emp_no = '101010'
    );

SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees e
    WHERE first_name LIKE 'Aamod'
    )
ORDER BY title;

SELECT first_name, last_name FROM employees
WHERE emp_no IN(
    SELECT emp_no FROM dept_manager
    WHERE gender = 'F'
    AND to_date >= NOW()
    );
