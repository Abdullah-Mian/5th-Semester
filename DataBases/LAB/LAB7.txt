CREATE DATABASE SUBQURIES;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Name NVARCHAR(50)
);

GO
INSERT INTO Department (Dept_ID, Name) VALUES
(1, 'HR'),
(2, 'QA'),
(3, 'IT'),
(4, 'Sales'),
(5, 'Marketing'),
(6, 'Production');

GO
CREATE TABLE Employee (
    E_ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Salary INT,
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

GO
INSERT INTO Employee (E_ID, Name, Salary, Dept_ID) VALUES
(1, 'A', 10000, 1),
(2, 'B', 20000, 1),
(3, 'C', 30000, 1),
(4, 'D', 40000, 2),
(5, 'E', 50000, 2),
(6, 'F', 60000, 1),
(7, 'G', 70000, 1),
(8, 'H', 80000, 2),
(9, 'I', 90000, 3),
(10,'J', 25000, 1),
(11,'A', 30000, 4),
(12,'K', 35000, 4),
(13,'L', 40000, 4),
(14,'E', 45000, 4),
(15,'F', 55000, 5);

DECLARE @N INT = 2;
SELECT * 
FROM Employee e1
WHERE @N - 1 = (
    SELECT COUNT(DISTINCT Salary) 
    FROM Employee e2 
    WHERE e2.Salary > e1.Salary
);


-- TASK 1 Give the names of all employees who are being underpaid with respect to average salaries of the employees
SELECT Name 
FROM Employee
WHERE Salary < (SELECT avg(Salary) from Employee);


-- TASK 2 Give the names of the employees who work in department with 2 or more employees.
Select dept_ID from employee
Group by dept_ID
Having count(*)>=2;

Select name from employee 
where dept_ID IN 
( Select dept_ID from employee
Group by dept_ID
Having count(*)>=2 )

Select e.name,e.dept_ID,d.name from employee e 
join department d on e.dept_ID=d.Dept_ID
where e.dept_ID IN 
( Select e1.dept_ID from employee e1
Group by e1.dept_ID
Having count(*)>=2 )
order by d.name desc


--TASK 3 Retrieve the details of those employees who have salary higher than the average salary of employees in the respective department
Select avg(salary) from employee where Dept_ID = 1;


Select * from employee e1
Where salary >
(
Select avg(salary) from employee e2
Where e1.dept_ID = e2.dept_ID
);


--TASK 4 Fetch details of all employees whose salary is equal to any salary in QA department
Select e.salary from employee e 
join department d 
on e.dept_id = d.dept_id
Where d.Name ='QA'

Select * from employee emp
Where emp.salary = any (Select e.salary from employee e 
join department d 
on e.dept_id = d.dept_id
Where d.Name ='QA')


--Task 5 Fetch details of all employees whose salary is greater than the salary of all employees in ‘QA’ Department

Select * from employee emp
Where emp.salary > all (Select e.salary from employee e 
join department d 
on e.dept_id = d.dept_id
Where d.Name ='QA');

--Task 6 Fetch details of all departments which have employees working in them.
Select name from department where 
exists (select * from employee where employee.dept_ID=department.Dept_ID)

--Task 7 Retrieve the same data from task 6 using IN operator
Select name from department where 
dept_ID in (select dept_ID from employee); 


--Task 8 Retrieve the same data from task 6 using Joins
Select d.Name from department d
join Employee e ON e.Dept_ID = d.Dept_ID
group by d.Name;

--Task 9 Retrieve the details of those departments who don’t have any employees in them using NOT EXISTS operator
Select name, Dept_ID from department where 
not exists (select * from employee where employee.dept_ID = department.Dept_ID)

--Task 10 Retrieve the details of those departments who don’t have any employees in them using NOT IN operator
Select name from department where 
dept_ID not in (select dept_ID from employee);



---------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE orchestras (
    id INT PRIMARY KEY,
    name VARCHAR(32),
    rating DECIMAL(5, 2),
    city_origin VARCHAR(32),
    country_origin VARCHAR(32),
    year INT
);
GO

CREATE TABLE concerts (
    id INT PRIMARY KEY,
    city VARCHAR(64),
    country VARCHAR(32),
    year INT,
    rating DECIMAL(5, 2),
    orchestra_id INT,
    FOREIGN KEY (orchestra_id) REFERENCES orchestras(id)
);
GO
CREATE TABLE members (
    id INT PRIMARY KEY,
    name VARCHAR(64),
    position VARCHAR(32),
    experience INT,
    orchestra_id INT,
    wage INT,
    FOREIGN KEY (orchestra_id) REFERENCES orchestras(id)
);



INSERT INTO orchestras (id, name, rating, city_origin, country_origin, year) VALUES
(1, 'Symphony A', 8.5, 'New York', 'USA', 2000),
(2, 'Philharmonic B', 7.8, 'Los Angeles', 'USA', 1998),
(3, 'Orchestra C', 9.1, 'Paris', 'France', 1995),
(4, 'Ensemble D', 8.0, 'Berlin', 'Germany', 2005),
(5, 'Orchestra E', 7.5, 'New York', 'USA', 2010);

GO
INSERT INTO concerts (id, city, country, year, rating, orchestra_id) VALUES
(1, 'New York', 'USA', 2013, 8.0, 1),
(2, 'Paris', 'France', 2013, 8.5, 3),
(3, 'Berlin', 'Germany', 2012, 7.9, 4),
(4, 'Los Angeles', 'USA', 2013, 7.8, 2),
(5, 'New York', 'USA', 2011, 8.2, 5);

GO
INSERT INTO members (id, name, position, experience, orchestra_id, wage) VALUES
(1, 'Alice', 'Violin', 15, 1, 50000),
(2, 'Bob', 'Cello', 12, 1, 55000),
(3, 'Charlie', 'Violin', 8, 2, 60000),
(4, 'David', 'Trumpet', 10, 3, 70000),
(5, 'Eva', 'Piano', 11, 3, 75000),
(6, 'Frank', 'Flute', 5, 4, 45000),
(7, 'Grace', 'Violin', 20, 4, 90000),
(8, 'Hannah', 'Percussion', 14, 5, 30000),
(9, 'Ian', 'Clarinet', 18, 2, 65000),
(10, 'Julia', 'Violin', 16, 1, 52000);

--Task 11 Select the names of all orchestras that have the same city of origin as any city in which any orchestra performed in 2013

SELECT o.name FROM orchestras o
join concerts c ON c.city = o.city_origin
WHERE c.year = 2013;

-- Again Task 11 

SELECT DISTINCT o.name
FROM orchestras o
WHERE o.city_origin IN (
    SELECT city
    FROM concerts 
    WHERE year = 2013
);


--Task 12 Select the names and positions (i.e. instrument played) of all orchestra members that have above 10 years of experience and do not belong to orchestras with a rating below 8.0
SELECT m.name, m.position
FROM members m
JOIN orchestras o ON m.orchestra_id = o.id
WHERE m.experience > 10 AND o.rating >= 8.0;

--Task 13 Show the name and position of orchestra members who earn more than the highest paid violinis

SELECT m.name, m.position
FROM members m
WHERE m.wage > (
    SELECT MAX(wage)
    FROM members
    WHERE position = 'Violin'
);

--Task 14 Show the name and number of members for each orchestra that has more members than the average membership of all orchestras in the table
SELECT o.name ,count (m.id) as member_count FROM orchestras o
JOIN members m ON o.id = m.orchestra_id
Group by o.name
having COUNT(m.id) > (select avg(avgCount.member_count) from (SELECT count (m.id) as member_count FROM orchestras o
							JOIN members m ON o.id = m.orchestra_id
							Group by o.name) AS avgCount)

--Task 15 Show the name of orchestras who have 3 or fewer members 
SELECT o.name ,count (m.id) as member_count FROM orchestras o
JOIN members m ON o.id = m.orchestra_id
Group by o.name
having count(m.id) >= 3
