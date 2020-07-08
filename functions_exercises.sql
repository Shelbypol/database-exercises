#1
USE employees;

# 2
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

#3
SELECT first_name, last_name, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC;














