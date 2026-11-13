CREATE DATABASE IF NOT EXISTS instagram;


USE instagram;

CREATE TABLE user(

id   INT ,
age INT ,
name VARCHAR(30) NOT NULL,
email VARCHAR(40) UNIQUE,
followers INT DEFAULT 0 ,
following INT,
CONSTRAINT CHECK (age >= 13)
);



INSERT INTO user
(id , age , name , email , followers , following )
VALUES
(101 , 19, "Ronak", 'ronak@gmail.com', 77,80 ),
(102, 22, "bob","bob@gmail.com", 50,87),
(103,14,"adam","adam@gmail.com",58, 46),
(104,32,"salman","salman@gmail.com",63,65),
(105,17,"nike","nike@gmail.com",99,110);

INSERT INTO user
(id , age , name , email , followers , following )
VALUES
(106 , 17, "aaak", 'aaak@gmail.com', 123,80 ),
(107, 14, "alakb","alakb@gmail.com", 99,87),
(108,14,"amam","amam@gmail.com",57, 46),
(109,32,"saan","saan@gmail.com",83,65);

-- alter function is used to change scheme

-- 1. add new columns in the table  

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT 'DELHI';
SELECT * FROM user;



-- 2. Drop column

ALTER TABLE user
DROP COLUMN city;
SELECT * FROM user;


-- 3. Rename table 
ALTER TABLE instaUser
RENAME TO User;
select * from User;



-- 4. Change Column
ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;
SELECT * FROM user;



