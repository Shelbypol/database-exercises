
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(20) NOT NULL,
    record_name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(20) DEFAULT 'NONE',
    PRIMARY KEY(id)
);