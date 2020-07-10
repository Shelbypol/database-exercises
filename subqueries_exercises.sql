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


# 3
# Find all the current department managers that are female.