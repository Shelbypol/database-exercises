#1
USE employees;

SELECT COUNT(*) FROM employees;

# 2
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E';

#3
SELECT first_name, last_name, hire_date, curdate() ,DATEDIFF(CURDATE(), hire_date) AS days_since_hired
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY days_since_hired DESC;














