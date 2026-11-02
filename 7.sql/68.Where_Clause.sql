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



INSERT INTO user
(id , age , name , email , followers , following )
VALUES
(101 , 19, "Ronak", 'ronak@gmail.com', 77,80 ),
(102, 22, "bob","bob@gmail.com", 50,87),
(103,14,"adam","adam@gmail.com",58, 46),
(104,32,"salman","salman@gmail.com",63,65),
(105,17,"nike","nike@gmail.com",99,110);


-- where clause used to define some condition and get some spacific data 

SELECT *
FROM users
WHERE FOLLOWING >=60;

-- if we only want name and followers 

select name , followers
from users
where followers >=60;