USE ad_lister;

CREATE TABLE IF NOT EXISTS users(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     first_name VARCHAR(100) NOT NULL,
     last_name VARCHAR(100) NOT NULL,
     username VARCHAR(100) DEFAULT 'NONE',
     email VARCHAR(100),
     PRIMARY KEY(id)
);

SHOW TABLES;
DESCRIBE users;


CREATE TABLE IF NOT EXISTS ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    user_id INT,
    PRIMARY KEY(id),
    UNIQUE(user_id)
);

DESCRIBE ads;

CREATE TABLE IF NOT EXISTS categories(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     name VARCHAR(100) NOT NULL,
     PRIMARY KEY(id)
);

SHOW TABLES;
DESCRIBE categories;
DROP TABLE categories;

CREATE TABLE IF NOT EXISTS ad_categories(
    category_id INT,
    ad_id INT,
    UNIQUE KEY(ad_id),
    UNIQUE KEY(category_id)
);

SHOW TABLES;
DESCRIBE ad_categories;
