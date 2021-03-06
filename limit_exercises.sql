USE employees;

SHOW TABLES;

SELECT * FROM titles;

# 2
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# 3
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 5;

# 4
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
