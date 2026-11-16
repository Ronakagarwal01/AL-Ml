-- Index are special database objects that makes data retrival faster.

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


CREATE INDEX idx_branch ON  accounts(branch);






