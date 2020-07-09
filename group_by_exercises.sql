
USE employees;

# 2
SELECT DISTINCT title FROM titles;

# 3
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

# 4
SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

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
GROUP BY last_name
ORDER BY last_name;

#7
SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena' ,'Vidya', 'Maya')
GROUP BY gender;


# lec examples

SELECT gender, birth_date, COUNT(*) AS num_employees from employees
group by birth_date, gender
ORDER BY birth_date;


SELECT emp_no, COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary)
FROM salaries
GROUP BY emp_no
ORDER BY MAX(salary) DESC;

# bonus work
# Find the most common name
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name
ORDER BY first_name desc
LIMIT 1;


# Find the most common female and male name
SELECT gender, CONCAT(first_name, ' ', last_name), COUNT(*)
FROM employees
GROUP BY gender, first_name, last_name
ORDER BY COUNT(first_name) desc, gender;


# Find total number of female and male employees
SELECT gender, COUNT(gender)
FROM employees
GROUP BY gender;

# Find the highest employee number of each unique first name
SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name;

# Select the first and last hire date for each first name
SELECT first_name, hire_date
FROM employees;

# Find the minimum, maximum, average, and total number of salaries
SELECT MIN(salary), MAX(salary), AVG(salary), SUM(salary)
FROM salaries
GROUP BY salary;

# Find the min, max, avg, total, and count of each employee's salaries
SELECT MIN(salary), MAX(salary), AVG(salary), SUM(salary), COUNT(emp_no)
FROM salaries
GROUP BY salary,emp_no;