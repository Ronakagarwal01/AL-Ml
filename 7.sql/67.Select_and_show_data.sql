DROP DATABASE IF EXISTS instagram;

CREATE DATABASE instagram;

USE instagram;


CREATE TABLE users (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(40) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CHECK (age >= 13)
);


CREATE TABLE post (
    id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


INSERT INTO users
(id, age, name, email, followers, following)
VALUES
(1, 19, 'Ronak', 'ronak@gmail.com', 77, 80),
(2, 19, 'bob', 'bob@gmail.com', 50, 87),
(3, 19, 'adam', 'adam@gmail.com', 58, 46),
(4, 32, 'salman', 'salman@gmail.com', 475, 65),
(5, 17, 'nike', 'nike@gmail.com', 99, 110);


SELECT id, name, email FROM users;

SELECT * FROM users;

SELECT DISTINCT age FROM users;  -- distinct function unique chij provide karta h 


INSERT INTO post
(id, content, user_id)
VALUES
(101, 'HELLO EVERYONE', 1),
(102, 'WORLD', 5),
(103, 'YES SIR', 2),
(104, 'RONAK', 3),
(105, 'AMIT', 4);


SELECT * FROM post;