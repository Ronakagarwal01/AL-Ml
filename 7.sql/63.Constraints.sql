CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(

id   INT,
age INT ,
name VARCHAR(30) NOT NULL,
email VARCHAR(40) UNIQUE,
followers INT DEFAULT 0 ,
following INT,
CONSTRAINT CHECK (age >= 13)


);