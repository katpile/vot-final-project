GRANT ALL PRIVILEGES ON *.* TO 'maxscale_user'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS people;
USE people;

DROP TABLE IF EXISTS people;

CREATE TABLE people (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(255) NOT NULL,
        school VARCHAR(255) NOT NULL
);

INSERT INTO people (name, school) VALUES ('Niki', '32 language school');
INSERT INTO people (name, school) VALUES ('Mimi', 'NUII');
INSERT INTO people (name, school) VALUES ('Toni', 'Nemskata');
