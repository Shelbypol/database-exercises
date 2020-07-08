
USE employees;

# 2
SELECT DISTINCT title FROM titles;

# 3
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name;

# 4
SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# 5
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

#6
SELECT DISTINCT last_name, count(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#7
SELECT gender, COUNT(gender)
FROM employees
WHERE (gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'))
OR (gender = 'F'
    AND (first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'))

GROUP BY gender;