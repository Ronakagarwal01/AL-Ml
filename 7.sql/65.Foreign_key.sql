CREATE DATABASE IF NOT EXISTS instagram;


USE instagram;

CREATE TABLE user(

id   INT PRIMARY KEY,
age INT ,
name VARCHAR(30) NOT NULL,
email VARCHAR(40) UNIQUE,
followers INT DEFAULT 0 ,
following INT,
CONSTRAINT CHECK (age >= 13)


);



CREATE TABLE post(

id INT PRIMARY KEY, 
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id)  REFERENCES 	user (id)

);