USE join_test_db;
SELECT * FROM users;

# JOIN / INNER JOIN
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# LEFT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOINE
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


# USE employees;
#
# SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
# FROM employees as e
# JOIN dept_manager as dm
#       ON dm.emp_no = e.emp_no
#  JOIN departments as d
#       ON d.dept_no = dm.dept_no
# WHERE dm.to_date LIKE '%1999-01-01%';


