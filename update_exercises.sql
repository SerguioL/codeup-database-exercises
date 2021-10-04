USE codeup_test_db;

SELECT name FROM albums;
UPDATE albums
set sales = (sales * 10);

SELECT sales FROM albums;



SELECT name FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1979;

SELECT name FROM albums
WHERE artist = 'Michael Jackson';
UPDATE albums
set artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

