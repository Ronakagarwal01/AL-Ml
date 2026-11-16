-- Tranjection means series of operations
-- it follows the ACID properties

-- Atomicity   --> All statment succeed or none succeed.
-- Consistency --> Data moves from one valid state to another.
-- isolation   --> Parallel transaction don't interfere
-- Durability  --> Committed data is permentallu saved 



SELECT @@autocommit;

SET AUTOCOMMIT = 0;  -- IT IS USED TO STOP AUTOCOMMIT 


CREATE DATABASE  PRIME;
USE PRIME;

CREATE TABLE ACCOUNT(
ID INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(50),
BALANCE DECIMAL(10,2)
);

INSERT INTO ACCOUNT
(NAME , BALANCE)
VALUES
('ADAM',500.00),
('BOB',300.00),
('CHARLIE',1000.00);

SELECT * FROM ACCOUNT;

-- Commit in transaction 

START TRANSACTION;

UPDATE ACCOUNT SET BALANCE = BALANCE - 50 WHERE ID = 1;
UPDATE ACCOUNT SET BALANCE = BALANCE + 50 WHERE ID = 2;

COMMIT;

SELECT * FROM ACCOUNT;




