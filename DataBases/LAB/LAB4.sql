create database FYP;
use fyp;
create table student(S_id varchar(50),name varchar(50),Group_id int); 

create table Project(P_title varchar(900), Supervisor_id int, Group_id int);

create table Supervisor(name varchar(50),S_id varchar(50),Major varchar(50)); 

select * from Project;
drop table Project;
truncate table Supervisor;
truncate table Project;
INSERT INTO Supervisor (name, S_id, Major) VALUES
('Alice', 'S001', 'game-dev'),
('Bob', 'S002', 'AI'),
('Charlie', 'S003', 'web-dev'),
('M', 'S004', 'AI');


INSERT INTO Project (P_title, Supervisor_id, Group_id) VALUES
('Game Engine opment', 'S001', 101),
('AI Chatbot', 'S002', 102),
('Web Application', 'S003', 103),
('AI Research', 'S004', 104);


SELECT P.P_title
FROM Project P
JOIN Supervisor S ON P.Supervisor_id = S.S_id
WHERE S.Major = 'game-dev';

SELECT St.S_id, St.name
FROM Student St
JOIN Project P ON St.Group_id = P.Group_id
JOIN Supervisor S ON P.Supervisor_id = S.S_id
WHERE S.name = 'M';


SELECT COUNT(St.S_id) AS num_of_students
FROM Student St
JOIN Project P ON St.Group_id = P.Group_id
JOIN Supervisor S ON P.Supervisor_id = S.S_id
WHERE P.P_title LIKE '%AI%';


-- Students not involved in any project
SELECT St.name AS student_name
FROM Student St
LEFT JOIN Project P ON St.Group_id = P.Group_id
WHERE P.Group_id IS NULL;

-- Supervisors not involved in any project
SELECT S.name AS supervisor_name
FROM Supervisor S
LEFT JOIN Project P ON S.S_id = P.Supervisor_id
WHERE P.Supervisor_id IS NULL;
