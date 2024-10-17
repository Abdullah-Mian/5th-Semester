create database Cities;
use Cities;

create table info(P_id int , LastName varchar(50) , FirstName varchar(50), Address varchar(50), City varChar(50) );

Insert Into info(P_id,LastName,FirstName,Address, City)
Values(1,'Hansen', 'Ola ','Timoteivn 10', 'Sandnes');

Insert Into info(P_id,LastName,FirstName,Address, City)
Values(2,' Svendson ','Tove ','Borgvn 23 ','Sandnes');

Insert Into info(P_id,LastName,FirstName,Address, City)
Values(3 ,'Pettersen ','Kari ','Storgt 20 ','Stavanger');

Select * from info;

SELECT * FROM info
WHERE City LIKE 'sa%';


SELECT * FROM info
WHERE City LIKE '%nes%';

SELECT * FROM info
WHERE FirstName LIKE '_la';CREATE TABLE CUSTOMERS(CustomerID int,CustomerName varChar(50),ContactName varchar(50), Address varchar(50), City varchar(50), PostalCode int, Country varchar(50));INSERT INTO CUSTOMERS (CustomerID, CustomerName ,ContactName, Address, City, PostalCode, Country)VALUES ( 1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin',12209,'Germany');ALTER TABLE CUSTOMERS ALTER COLUMN PostalCode varchar(50);TRUNCATE TABLE CUSTOMERS;INSERT INTO CUSTOMERS (CustomerID, CustomerName ,ContactName, Address, City, PostalCode, Country)VALUES (
2,
'Ana Trujillo Emparedados y helados',
'Ana Trujillo',
'Avda. de la Constitución 2222',
'México D.F.',
'05021','Mexico');INSERT INTO CUSTOMERS (CustomerID, CustomerName ,ContactName, Address, City, PostalCode, Country)VALUES (3,
'Antonio Moreno Taquería',
'Antonio Moreno',
'Mataderos 2312',
'México D.F.',
'05023',
'Mexico');INSERT INTO CUSTOMERS (CustomerID, CustomerName ,ContactName, Address, City, PostalCode, Country)VALUES (4,
'Around the Horn',
'Thomas Hardy',
'120 Hanover Sq.',
'London',
'WA1 10P',
'UK');INSERT INTO CUSTOMERS (CustomerID, CustomerName ,ContactName, Address, City, PostalCode, Country)VALUES (5,
'Berglunds snabbkop',
'Christina Berglund',
'Berguvsvägen 8',
'Lulea',
'5-958 22',
'Sweden');

select * from CUSTOMERS;

SELECT * FROM CUSTOMERS
WHERE City LIKE 's%';

SELECT * FROM CUSTOMERS
WHERE City LIKE '%s';

SELECT * FROM CUSTOMERS
WHERE City LIKE '%land%';

SELECT * FROM CUSTOMERS
WHERE City NOT LIKE '%land%'

SELECT TOP 2 * FROM CUSTOMERS
WHERE Country  IN ('Germany','Sweden')

SELECT  * FROM CUSTOMERS
WHERE City IN ('Paris','London')




CREATE TABLE PRODUCTS(ProductID int, ProductName varchar(50),SupplierID int, CategoryID int,Unit varchar(50),Price int);
ALTER TABLE PRODUCTS ALTER COLUMN Price float;

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID,Unit,Price)
VALUES (1,'Chais',1,1,'10 boxes x 20 bags',18);

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID,Unit,Price)
VALUES (2,'Chang',1,1,'24 - 12 oz bottles',19);

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID,Unit,Price)
VALUES (3,'Aniseed Syup' ,1,2,'12 - 550ml bottles',10);

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID,Unit,Price)
VALUES (4,'Chief Anthon"s Cajun Seasoning',1,2,'48 - 6 oz jars',22);

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID,Unit,Price)
VALUES (5,'Chief Anthon"s Gumbo Mix',1,2,'36 Botles',21.53);

select * from PRODUCTS;

SELECT *
FROM PRODUCTS
WHERE Price
BETWEEN 10 AND 20;

SELECT *
FROM PRODUCTS
WHERE Price
BETWEEN 20 AND 30;

SELECT *
FROM PRODUCTS
WHERE Price
BETWEEN 10 AND 22 AND Unit NOT Like '%bags%';

SELECT *
FROM PRODUCTS
WHERE ProductName
NOT BETWEEN 'C' AND 'M' ;

CREATE TABLE SUPPLIER (
    S_ID INT , 
    S_NAME VARCHAR(50), 
    CITY VARCHAR(50)
);

CREATE TABLE PROD (P_ID INT, P_NAME VARCHAR(50), QUANTITY INT , S_ID INT PRIMARY KEY);

ALTER TABLE SUPPLIER
ADD CONSTRAINT fk_SUPPLIER_PROD
FOREIGN KEY (S_ID)
REFERENCES PROD (S_ID) ;

--ALTER TABLE SUPPLIER
--ADD CONSTRAINT fk_SUPPLIER_PROD
--ADD ON DELETE CASCADE;

INSERT INTO PROD (P_ID, P_NAME, QUANTITY, S_ID) 
VALUES (101, 'Product A', 100, 1);

INSERT INTO PROD (P_ID, P_NAME, QUANTITY, S_ID) 
VALUES (102, 'Product B', 200, 2);

INSERT INTO PROD (P_ID, P_NAME, QUANTITY, S_ID) 
VALUES (103, 'Product C', 300, 3);


INSERT INTO SUPPLIER (S_ID, S_NAME, CITY)
VALUES (1, 'ROYAL CANIN', 'LAHORE');

INSERT INTO SUPPLIER (S_ID, S_NAME, CITY)
VALUES (2, 'P&G', 'FAISALABAD');

INSERT INTO SUPPLIER (S_ID, S_NAME, CITY)
VALUES (3, 'JALAL SONS', 'OKARA');

select * from PROD ;
select *from SUPPLIER;

