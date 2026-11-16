-- stored Procedures are predefined set of sql statment that you can save in the database and execute whenever needed 


CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2),
    branch VARCHAR(50)
    

);

INSERT INTO accounts VALUES
(1,'Adam',500.00,'mumbai'),
(2,'Bob',300.00,'Delhi'),
(3,'Charlie',700.00,'Bangalore'),
(4,'David',1000.00,'Noida');

SELECT * FROM accounts;


DELIMITER $$
CREATE PROCEDURE check_balance(IN  acc_id INT)
BEGIN
		SELECT balance
        FROM accounts
        WHERE account_id = acc_id;

END $$

DELIMITER ;


CALL check_balance(1);


DROP PROCEDURE check_balance;
















