
CREATE DATABASE IF NOT EXISTS candy_db;

SHOW DATABASES;

USE candy_db;


CREATE TABLE types(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TINYTEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE candies(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price_in_cents FLOAT NOT NULL,
    description TINYTEXT NOT NULL,
    type_id INT UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY(type_id) REFERENCES types (id)
);

DESCRIBE candies;

DESCRIBE types;

INSERT INTO types (name, description) VALUES
('Chewing Gum', 'Great for chewing!'),
('Chocolate', 'Great for chocolate goodness!'),
('Hard Candy', 'Don’‘t bite too hard!'),
('Gummy Candy', 'Not too hard; not too soft.');

INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
('Doublemint Gum', 159, 'Standard chewing gum', 1),
('Orbit Gum', 110, 'Another standard chewing gum', 1),
('Hershey Bar', 210, 'Standard chocolate bar', 2),
('Gushers', 312, 'Nice and sour!', 4),
('Sour Patch Kids', 206, 'Quite sour!', 4),
('M&Ms', 199, 'Crunchy and chocolatey', 2);

SELECT * FROM candies;

SELECT t.name, c.name FROM candies c
    JOIN types t on t.id = c.type_id
WHERE c.price_in_cents >200;


SELECT * FROM types;