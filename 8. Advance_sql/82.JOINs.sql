CREATE TABLE CUSTOMER(
CUS_ID INT PRIMARY KEY,
NAME VARCHAR(50),
CITY VARCHAR(50)
);


INSERT INTO CUSTOMER 
VALUES
(1,'ALICE','MUMBAI'),
(2,'BOB','DELHI'),
(3,'CHARLIE','BANGLORE'),
(4,'DAVID','MUMBAI');

CREATE TABLE ORDERS(
ORDER_ID INT PRIMARY KEY,
CUS_ID INT,
AMOUNT INT
);

INSERT INTO ORDERS VALUES
(101,1,500),
(102,1,900),
(103,2,300),
(104,5,700);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;


-- 1. inner JOIN -->> in this join the coman data is used from both tables 

SELECT *
FROM CUSTOMER AS C 
INNER JOIN ORDERS AS O 
ON C.CUS_ID = O.CUS_ID;


-- LEFT JOIN / LEFT OUTER JOIN 
-- ye a table ki sari values rakahata h and b table ki only matching values rakhata h 

SELECT * 
FROM CUSTOMER AS C 
LEFT JOIN ORDERS AS O
ON C.CUS_ID = O.CUS_ID;


-- Right Join
-- ye b table ki sarii values raakhata h and a table ki matching values rakhata h 


SELECT * 
FROM CUSTOMER AS C
RIGHT JOIN ORDERS AS O
ON C.CUS_ID = O.CUS_ID ;



-- Outer joins 
-- isme table a and table b dono ki sarii values hoti h 

SELECT * FROM CUSTOMER AS C 
LEFT JOIN ORDERS AS O 
ON C.CUS_ID = O.CUS_ID
UNION
SELECT * FROM CUSTOMER AS C 
RIGHT JOIN ORDERS AS O 
ON C.CUS_ID = O.CUS_ID;



-- SELF JOIN 
-- IT IS A REGULAR JOIN BUT THE TABLE IS JOINED WITH ITSELF.

SELECT *
FROM CUSTOMER AS A 
JOIN CUSTOMER AS B 
ON A.CUS_ID = B.CUS_ID;








-- Cross join 
select *
from customer
CROSS JOIN ORDERS;