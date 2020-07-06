USE codeup_test_db;

DROP TABLE IF EXITS albums

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED AUTO-INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(50),
    release_date DATE,
    sales FLOAT UNSIGNED,
    genre VARCHAR(20),
    PRIMARY KEY(id)
)