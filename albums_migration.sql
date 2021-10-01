USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(35) NOT NULL,
                       name VARCHAR(65) NOT NULL,
                       address VARCHAR(200) NOT NULL,
                       release_date INT NOT NULL,
                       personal_statement TEXT,
                       sales FLOAT UNSIGNED,
                       genre VARCHAR(65) NOT NULL,
                       PRIMARY KEY(id)
);