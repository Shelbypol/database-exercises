USE employees;

# 1
# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT CONCAT(first_name, ' ', last_name), hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

# 2
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod');

# 3
# Find all the current department managers that are female.

SELECT *
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01')
  AND gender = 'F';



# FIND ALL DEP NAME


# LEC EXAMPLE
SELECT dept_no
FROM departments
WHERE dept_name = 'Customer Service';

SELECT *
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
);


# GET DEP MANAGERS | EMPLOYEE NUMBER | OF SALES DEPARTMENT
SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
)
  AND to_date > NOW();

# # CONCAT FIRST TWO EMPLOYEES HIGHEST SALARIES
# SELECT CONCAT(
#     (
#         SELECT MAX (salary)
#         FROM salaries
#         WHERE emp_no = '10001'
#     ),
#         ' ',
#     (
#         SELECT MAX(salary)
#         FROM salaries
#         WHERE emp_no = '10002'
#     )
#
#            ) AS Salaries;

# FIND THE FIRST AND LAST NAME OF ALL DEPT MANAGAE
SELECT e.first_name, e.last_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
);


# GET NAME OF EMPLOYEES WITH 10 HIGHEST SALARIES
SELECT emp_no, salary
FROM salaries
WHERE to_date > NOW()
ORDER BY salary DESC;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
)

LIMIT 10;

# NAME AND HIRED DATE OF EARLIEST HIRED-DEPT EMP
SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE from_date = (SELECT MIN(from_date) FROM dept_emp)
);