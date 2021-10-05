USE codeup_test_db;

SELECT name FROM albums
WHERE release_date > 1991;

SELECT name FROM albums
WHERE genre = 'disco';

SELECT name FROM albums
WHERE artist LIKE '%whitney houston%';

DELETE FROM albums
WHERE release_date > 1991;

DELETE FROM albums
WHERE genre LIKE '%disco%';

DELETE FROM albums
WHERE artist LIKE '%whitney houston%';
SELECT * FROM albums;