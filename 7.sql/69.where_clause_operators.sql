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


-- where arthematic opereations 

select name , age 
from user
where age + 1 = 18;   

-- logical operator in where 

select name , age , followers
from user
where age >=15 AND followers >50 ;



select name , age , followers 
from user
where age >= 15 OR followers > 50;


SELECT * 
FROM user
WHERE age BETWEEN 15 AND 25;  -- BETWEEN IS USED FOR RANGE FUCTION 

INSERT INTO user
(id,age , name , email , followers , following)
VALUES
(5,14,'EVE','eve@gmail.com',400,145),
(6,16,'farhan',"farhan@gmail.com",10000,1000);


SELECT *
FROM user
WHERE email IN ("ronak@gmail.com","nike@gmail.com","abc@gmail.com");

SELECT *
FROM user
WHERE age IN (14,16);   -- IN function is used when a particular values is needed 



SELECT *
FROM user
WHERE age NOT IN (14,16); 