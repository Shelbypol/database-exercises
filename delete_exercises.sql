
--  4-ad
SELECT 'Delete albums after 1991' AS 'Exercise 4-a'
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

-- 4-b
SELECT 'Delete disco genre' AS 'Exercise 4-b'
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

-- 4-c
SELECT 'Delete Whitney Houston' AS 'Exercise 4-c'
SELECT * FROM albums WHERE artist_name LIKE '%Whitney Houston%';
DELETE FROM albums WHERE artist_name LIKE '%Whitney Houston%';