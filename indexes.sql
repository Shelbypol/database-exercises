USE employees;

SHOW TABLES;

DESCRIBE departments;
# dept_no PRI
# dempt_name UNI
DESCRIBE dept_emp;
# emp_no PRI
# dept_no PRI
DESCRIBE dept_manager;
# dept_no PRI
# emp_no PRI
DESCRIBE employees;
# emp_no PRI
DESCRIBE salaries;
# emp_no PRI
# from_date PRI
DESCRIBE titles;
# emp_no PRI
# title PRI
# from_date PRI

USE codeup_test_db;
ALTER TABLE albums
ADD UNIQUE (artist_name, record_name);
SELECT * FROM albums;

# ================== TEST CONSTRAINT WORKED
# UPDATE albums
# SET artist_name = 'AC/DC', record_name = 'Back in Black'
# WHERE id = 1;