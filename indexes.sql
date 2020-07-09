USE employees;

SHOW TABLES;

DESCRIBE departments;
# dept_no PRI
# dept_name UNI
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
DESCRIBE albums;
SELECT * FROM albums;

# ================== TEST CONSTRAINT WORKED
# UPDATE albums
# SET artist_name = 'AC/DC', record_name = 'Back in Black'
# WHERE id = 1;

USE codeup_test_db;
CREATE TABLE pets(
    id INT UNSIGNED,
    pet_NAME VARCHAR(30)  NOT NULL,
    owner_name VARCHAR(30),
    age INT
);
DESCRIBE pets;

# add primary key
ALTER TABLE pets
MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

# drop primary key
ALTER TABLE pets
MODIFY COLUMN id INT;

ALTER TABLE pets
DROP PRIMARY KEY;

SHOW CREATE TABLE pets;

-- DEFINE PRIMARY KEY ON TABLE CREATION STATEMENT
DROP TABLE pets;

CREATE TABLE pets(
                     id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                     pet_NAME VARCHAR(30)  NOT NULL,
                     owner_name VARCHAR(30),
                     age INT
);

DESCRIBE pets;

# ADD NAME INDEX
ALTER TABLE pets
ADD INDEX `pet_name_key` (pet_name);

# DROP INDEX
ALTER TABLE pets
DROP INDEX `pet_name_key`;

SHOW INDEX FROM pets;