-- Create root user for any host with mysql_native_password
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'rootpassword';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'rootpassword';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- Create maxscale_user with mysql_native_password
CREATE USER IF NOT EXISTS 'maxscale_user'@'%' IDENTIFIED BY '12345678';
ALTER USER 'maxscale_user'@'%' IDENTIFIED WITH mysql_native_password BY '12345678';
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
