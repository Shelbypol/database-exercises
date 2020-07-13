USE ad_lister;

INSERT INTO users(first_name, last_name, email)
VALUES('Jay', 'Arredondo', 'jaymail@gmail.com'),
      ('Julia', 'Contreras', 'juliamail@gmail.com'),
      ('Shelby', 'Polasek', 'shelbymail@gmail.com');

SELECT * FROM users;

INSERT INTO ads(title, description, user_id)
VALUES('Sofa', 'small grey sofa', 1),
      ('Spurs Tickets', 'floor seats against lakers', 2),
      ('Exterminator', 'ants in my pants', 3);

SELECT * FROM ads;

INSERT INTO categories(name)
VALUES('Help Wanted'),
       ('Give Away'),
       ('Furniture');

SELECT * FROM categories;


INSERT INTO ad_categories(category_id, ad_id)
VALUES (2, 1),
       (3, 1),
       (2, 2),
       (1, 3);
SELECT * FROM ad_categories;