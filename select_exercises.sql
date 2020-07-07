USE codeup_test_db;

-- 3-1
SELECT 'The name of all albums by Pink Floyd' AS 'Exercise 3-1';
SELECT artist_name, record_name FROM albums WHERE artist_name = 'Pink Floyd';

-- 3-2
SELECT 'The year Lonely Hearts Club realeased' AS 'Exercise 3-2';
SELECT release_date FROM albums WHERE record_name = 'Sgt. Peppers Lonely Hearts Club Band';

-- 3-3
SELECT 'Genre for Nevermind' AS 'Exercise 3-3';
SELECT genre FROM albums WHERE record_name = 'Nevermind';

-- 3-4
SELECT 'Albums release in 1990''s' AS 'Exercise 3-4';
SELECT id, artist_name record_name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;

-- 3-5
SELECT 'Albums with less 20 million cert sales' AS 'Exercise 3-5';
SELECT id, record_name, sales FROM albums WHERE sales > 20;

-- 3-6
SELECT 'Albums with rock' AS 'Exercise 3-6';
SELECT * FROM albums WHERE genre LIKE '%rock%';