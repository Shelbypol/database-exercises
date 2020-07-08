#1
USE employees;

# 2
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY first_name;

#3
SELECT *
FROM employees
WHERE  last_name LIKE 'e%';


#4
SELECT hire_date, count(hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
GROUP BY hire_date;

#5
SELECT birth_date
FROM employees
WHERE birth_date LIKE '%12-25';

#6
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

# ==========================================================
SELECT * FROM employees;

# 1/2
SELECT first_name, COUNT(first_name)
FROM employees
WHERE gender = 'M'
    AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')

GROUP BY first_name;

# 3
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

# 4
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E';

# 5
SELECT birth_date
FROM employees
WHERE birth_date LIKE '%12-25'
    AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

#6
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';

