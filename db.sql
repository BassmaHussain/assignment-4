-- 1- from “orderdetails” table. Write a query to get all order numbers (without repetition) that
--contain any product starting with code (S18) and price more than (100).


-- 2- from “payments” table. Write a query to get all payments that were made on day (5) or (6)
-- (whatever month or year).
SELECT * FROM `payments` WHERE paymentDate LIKE '%-__-06%' OR paymentDate LIKE '%-__-05%';

SELECT * FROM `payments` WHERE Day(paymentDate) IN (5,6);

-- 3- from “customers” table. Write a query to get the fifth-highest credit limit of the
-- customers who (live in the USA and their phone number contains 5555).

SELECT * FROM `customers` WHERE country = 'USA' AND phone LIKE '%5555%' ORDER BY creditLimit DESC LIMIT 1 OFFSET 4;

-- 4- From the employees and offices tables, find the first name, last name, office number, and
-- office city for each employee.

SELECT e.firstName , e.lastName , o.city , o.officeCode FROM `employees` e JOIN offices o ON e.officeCode = o.officeCode;
-- 5- From the employees and offices tables, find all those employees who work in office ID (4)
-- or (6). Return first name, last name, office number and office city.
SELECT e.firstName , e.lastName , o.city , o.officeCode FROM `employees` e JOIN offices o ON e.officeCode = o.officeCode WHERE e.officeCode IN (4,6);