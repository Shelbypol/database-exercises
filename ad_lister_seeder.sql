USE ad_lister;

INSERT INTO users(first_name, last_name, email)
VALUES('Jay', 'Arredondo', 'jaymail@gmail.com'),
      ('Julia', 'Contreras', 'juliamail@gmail.com'),
      ('Shelby', 'Polasek', 'shelbymail@gmail.com');

SELECT * FROM users;

INSERT INTO ads(title, description)
VALUES('Sofa', 'small grey sofa'),
      ('Spurs Tickets', 'floor seats against lakers'),
      ('Exterminator', 'ants in my pants');

SELECT * FROM ads;

INSERT INTO categories(name)
VALUES('Help Wanted'),
       ('Give Away'),
       ('Furniture');

SELECT * FROM categories;

SELECT * FROM ad_categories;