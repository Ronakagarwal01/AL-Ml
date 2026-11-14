CREATE DATABASE IF NOT EXISTS COMPANY;

USE COMPANY;

CREATE TABLE EMPLOYEE(
EMPID INT PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
DEPARTMENT VARCHAR(20),
SALARY INT ,
HIRE_DATE  DATE 
);


INSERT INTO EMPLOYEE
(EMPID, FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY, HIRE_DATE)
VALUE
(101,' Alice',' Johnson' ,'IT ',6500 ,'2020-03-15'),
(102,'MARK','RIVERA','HR',4800,'2019-07-22'),
(103,'SOPHIA','LEE','FINANCE',7200,'2021-01-10'),
(104,'DANIEL','KIM','IT',5800,'2018-11-05'),
(105,'EMMA','BROWN','MARKETING',5300,'2022-04-18'),
(106,'LIAM','PATEL','FINANCE',6900,'2020-09-29'),
(107,'OLIVIA','GARCIA','HR',4600,'2017-06-30'),
(108,'NOAH','THOMPSON','IT',7500,'2023-02-12'),
(109,'AVA','MARTINEZ','MARKETING',5100,'2019-12-02'),
(110,'ETHAN','DAVIS','FINANCE',8000,'2016-05-14');

SELECT * FROM EMPLOYEE;

-- 0. remove the spacing from the data in first name and last name 

UPDATE EMPLOYEE
SET FIRST_NAME = TRIM(FIRST_NAME),
LAST_NAME = TRIM(LAST_NAME);

-- 1. Write a query to display every employee and all therir data

SELECT * FROM EMPLOYEE;


-- 2. list only the First Nmae  , last name and salary of every employee

SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEE;


-- 3. Show all employee who work in 'IT'  department 

SELECT * FROM EMPLOYEE 
WHERE DEPARTMENT = 'IT';

-- 4. Retrive employee with a salary greater than 6000

SELECT * FROM EMPLOYEE
WHERE SALARY > 6000;


-- 5. List all employee orderd by hiredate from newest to oldest 

SELECT * FROM EMPLOYEE 
ORDER BY HIRE_DATE DESC;


-- 6. Show a list of all unique departments present in the table .


SELECT DISTINCT DEPARTMENT 
FROM EMPLOYEE;


-- 7. Find employees whoes first name start with 'A'

SELECT *
FROM EMPLOYEE
WHERE FIRST_NAME LIKE 'A%';


-- 8. Show employee whoes salaries are between 4000 and 7000. 

SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 4000 AND 7000;


-- 9. Find the average salary of all employee 

SELECT AVG(SALARY) FROM EMPLOYEE;



-- 10. List each department along with the number of employees , but only include department with more than 3 employee

SELECT DEPARTMENT ,COUNT(*)
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(*) > 1;
