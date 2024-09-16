CREATE DATABASE db;


USE db;

CREATE TABLE ListOfCourses (
    Name VARCHAR(50),
    Reg_no INT NOT NULL PRIMARY KEY ,
    Courses VARCHAR(50),
    Course_Code INT,
    Offered_By VARCHAR(50)
);

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES ('Ali', 1, 'DIP', 1001, 'Mr. A');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Basit', 02, 'DBMS', 1002, 'Mr. X');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Akram', 03, 'OS', 1003, 'Mr. Y');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Asad', 04, 'DBMS', 1002, 'Mr. X');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Zeeshan', 05, 'DIP', 1001, 'Mr. A');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Offered_By)
VALUES('Muneer', 06, 'OS', 'Mr. Y');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Shafqat', 07 ,'NM ',1004 ,'Mr. H');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Course_Code, Offered_By)
VALUES('Ahsan ',08 ,'OS ',1003 ,'Mr. Y');

INSERT INTO ListOfCourses (Name, Reg_no, Courses, Offered_By)
VALUES('Ikram ',09 ,'DIP ','Mr. A');

INSERT INTO ListOfCourses (Name, Reg_no, Courses)
VALUES('Hassan ',10, 'DSP');

SELECT * FROM ListOfCourses;
--SELECT COUNT(DISTINCT Courses) FROM ListOfCourses;
--UPDATE ListOfCourses SET Course_Code = 1000 WHERE Name = 'Hassan' OR Name = 'Ikram' OR Name = 'Muneer';
--SELECT DISTINCT  Courses From ListOfCourses;
--SELECT Name FROM ListOfCourses ORDER BY Course_Code DESC;
--ALTER TABLE ListOfCourses rename Offered_By to OfferedBy;

-- 1
SELECT COUNT(Courses) FROM ListOfCourses;
SELECT COUNT(Course_Code) FROM ListOfCourses;
SELECT COUNT(Offered_By) FROM ListOfCourses;

SELECT COUNT(Courses)AS Total FROM ListOfCourses WHERE Course_Code = 1002;

SELECT COUNT(Name) AS TotalCourses FROM ListOfCourses WHERE Courses = 'DIP';

-- 2
SELECT  UPPER(Name) FROM ListOfCourses;
SELECT  LOWER(Name) FROM ListOfCourses;

-- 3
SELECT LEN(Name) as Name,Course_Code,Reg_no FROM ListOfCourses;
--SELECT Name,Courses FROM ListOfCourses GROUP BY Name HAVING Courses;

--4
SELECT MAX(Reg_no) AS LargestReg_no FROM ListOfCourses;
SELECT MAX(Course_Code) FROM ListOfCourses;

--5

SELECT COUNT(Courses) AS TotalCourses FROM ListOfCourses;

--6
SELECT AVG(Reg_no) From ListOfCourses;
SELECT AVG(Reg_no) AS OrderAverage FROM ListOfCourses;

--
SELECT Name,SUM(Reg_no) FROM ListOfCourses
GROUP BY Name;CREATE TABLE Customers (O_ID int Unique,OrderPrice int,Customer varchar(50));INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(1, 1000, 'Hansen');

INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(2, 1600, 'Nilsen');

INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(3, 700 ,'Hansen');

INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(4, 300 ,'Hansen');

INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(5, 2000 ,'Jensen');

INSERT INTO Customers (O_ID,OrderPrice,Customer)
VALUES(6, 100 ,'Nilsen');

SELECT * FROM Customers;

SELECT Customer,SUM(OrderPrice) FROM Customers
WHERE Customer='Hansen'  OR Customer = 'Nilsen'
GROUP BY Customer
HAVING SUM(OrderPrice)<2100;

SELECT Customer,SUM(OrderPrice) FROM Customers
GROUP BY Customer
