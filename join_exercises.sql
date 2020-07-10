# SHOW DATABASES;
USE join_test_db;
SHOW TABLES;
SELECT * FROM users;

# JOIN / INNER JOIN
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# LEFT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# 4
# LIST OF ROLES WITH NUM USERS HAVE GIVEN ROLE
# LEFT JOIN return 0 and null for commentator
SELECT r.name as role, COUNT(r.name)
FROM users as u
JOIN roles as r
  ON u.role_id = r.id
GROUP BY r.name;

# EMPLOYEE DATABASE

USE employees;

# 2
# shows each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ' , e.last_name) AS 'Manager Name'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '%9999-01-01%'
ORDER BY dept_name;


# 3
# Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ' , e.last_name) AS 'Manager Name'
FROM employees as e
JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE e.gender ='F'
    AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

# 4
# NEED EMPLOYEES TITLES WITH COUNT WHO WORK IN CUSTOMER SERVICE
SELECT t.title AS 'Title', COUNT(t.title)
FROM departments as d
 JOIN dept_emp as de
    ON de.dept_no = d.dept_no
JOIN titles as t
    ON t.emp_no = de.emp_no
WHERE d.dept_name ='Customer Service'
    AND t.to_date = '9999-01-01'
GROUP BY title;

# 5
# FIND CURRENT SALARY OF ALL MANAGERS
SELECT de.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, salary AS Salary
FROM employees as e
JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
JOIN departments AS de
    ON de.dept_no = dm.dept_no
JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name;


# BONUS
# Find names of all current employees, their department name, and their current manager's name.
# 240,124 Rows
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(e1.first_name , ' ', e1.last_name) AS 'Manager Name'
FROM employees AS e
 JOIN dept_emp AS de
      ON de.emp_no = e.emp_no
 JOIN departments AS d
      ON d.dept_no = de.dept_no
 JOIN dept_manager AS dm
      ON dm.dept_no = d.dept_no
JOIN employees AS e1
    ON dm.emp_no = e1.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01';
