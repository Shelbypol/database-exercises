USE codeup_test_db;


S
-- 2-a
SELECT 'All albums' AS 'Exercise 2-a';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT sales FROM albums;

-- 2-b
SELECT artist_name AS 'All albums release before 1980' FROM albums;
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

-- 2-c
SELECT 'Jackson albums' AS 'Exercise 2-c';
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';
