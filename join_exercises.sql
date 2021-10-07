
USE employees;

# rephrase the question in terms of the tables and columns in your database

# write a query that shows each department along with the name of the current manager for that department.

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON dm.emp_no = e.emp_no
WHERE to_date >= NOW()
ORDER BY dept_name;

# Find the name of all departments currently managed by women.

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON dm.emp_no = e.emp_no
WHERE to_date >= NOW() AND e.gender = 'F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.

SELECT t.title ,COUNT(t.title)FROM titles t
    JOIN dept_emp de
        ON t.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date >= NOW()
AND de.to_date >= NOW()
GROUP BY t.title;

# Find the current salary of all current managers.

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary
FROM departments as d
         JOIN dept_manager AS dm
              ON d.dept_no = dm.dept_no
         JOIN employees AS e
              ON dm.emp_no = e.emp_no
        JOIN salaries AS s
            ON e.emp_no = s.emp_no
WHERE dm.to_date >= NOW()
AND S.to_date >= NOW()
ORDER BY dept_name;

SELECT * FROM salaries;