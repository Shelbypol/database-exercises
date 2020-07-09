SHOW DATABASES;
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
LEFT JOIN roles as r
  ON u.role_id = r.id
GROUP BY r.name;





# USE employees;
#
# SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
# FROM employees as e
# JOIN dept_manager as dm
#       ON dm.emp_no = e.emp_no
#  JOIN departments as d
#       ON d.dept_no = dm.dept_no
# WHERE dm.to_date LIKE '%1999-01-01%';


