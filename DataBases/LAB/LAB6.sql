CREATE DATABASE LAB6;
GO
USE LAB6;

CREATE TABLE GROUPS (
	GROUP_ID INT PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL
	);

GO
INSERT INTO Groups (group_id, name) VALUES
(1, 'BCE'),
(2, 'BEE-P'),
(3, 'BEE-E'),
(4, 'BEE-T');


CREATE TABLE SUBJECTS (
    SUBJECT_ID INT PRIMARY KEY,
    TITLE VARCHAR(100) NOT NULL
);
GO
INSERT INTO SUBJECTS (SUBJECT_ID, TITLE) VALUES
(1, 'Islamic Studies'),
(2, 'Discrete Mathematics'),
(3, 'Linear Algebra'),
(4, 'Digital Logic Design'),
(5, 'Programming Fundamentals'),
(6, 'Engineering Professionalism'),
(7, 'Probability Methods in Engineering'),
(8, 'Signals and Systems'),
(9, 'Electronic Devices and Circuits'),
(10, 'Data Structures and Algorithms'),
(11, 'Computer-Aided Engineering Design'),
(12, 'Control Systems'),
(13, 'Data Communication and Computer Networks'),
(14, 'Microprocessor Systems and Interfacing'),
(15, 'Software Engineering Concepts'),
(16, 'French'),
(17, 'Business Communication Workshop'),
(18, 'Internet of Things'),
(19, 'VLSI Design'),
(20, 'Digital Image Processing'),
(21, 'Game Development'),
(22, 'Machine Learning'),
(23, 'Computer Architecture'),
(24, 'Entrepreneurship');
GO
select * from Subjects;

CREATE TABLE TEACHERS (
    TEACHER_ID INT PRIMARY KEY ,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
);
GO
INSERT INTO TEACHERS (TEACHER_ID,FIRST_NAME,LAST_NAME) VALUES
(1,'Mr. Usman', 'Rafiq'),
(2,'Dr. Jehangir', 'Arshad'),
(3,'Mr. Modassir', 'Ishfaq'),
(4,'Dr. Imran', 'Ahmed'),
(5,'Dr.Arsla', 'Khan'),
(6,'Mr. Ahmad', 'Mudassir'),
(7,'Dr. Zaid', 'Ahmed'),
(8,'Ms. Wajeeha', 'Khan'),
(9,'Mr.Moazzam', 'Ali Sahi'),
(10,'Dr. Muhammad', 'Jawad'),
(11,'Dr. Mirza', 'Tariq Humayun'),
(12,'Dr.Muhammad', 'Jawad'),
(13,'Dr. Abbas', 'Javed'), 
(14,'Dr. Bilal', 'Zafar Amin'),
(15,'Ms. Hina', 'Munir'),
(16,'Dr.Muhammad', 'Naeem Awais'),
(17,'Dr. Ikram', 'Ullah Khosa'),
(18,'Dr. Sobia', 'Baig');


CREATE TABLE STUDENTS (
	STUDENT_ID INT PRIMARY KEY,
	FIRST_NAME VARCHAR(100) NOT NULL,
	LAST_NAME VARCHAR(100),
	GROUP_ID INT ,
	CONSTRAINT FK_GROUP_ID FOREIGN KEY (GROUP_ID) REFERENCES GROUPS(GROUP_ID)
	ON DELETE SET NULL ON UPDATE CASCADE 
);
GO
INSERT INTO STUDENTS (STUDENT_ID, FIRST_NAME, LAST_NAME, GROUP_ID) VALUES
(1, 'Ali', 'Khan', 1),
(2, 'Sara', 'Ahmed', 1),
(3, 'Hassan', 'Raza', 2),
(4, 'Fatima', 'Bashir', 2),
(5, 'Bilal', 'Shah', 3),
(6, 'Ayesha', 'Fatima', 3),
(7, 'Owais', 'Naseem', 4),
(8, 'Zain', 'Ullah', 4);


CREATE TABLE SUBJECT_TEACHER (
    SUBJECT_ID INT,
    TEACHER_ID INT,
    GROUP_ID INT,
    --CONSTRAINT PK_SUBJECT_ID PRIMARY KEY (SUBJECT_ID, TEACHER_ID, GROUP_ID),
    --CONSTRAINT FK_SUBJECT_ID FOREIGN KEY (SUBJECT_ID) REFERENCES SUBJECTS(SUBJECT_ID),
    --CONSTRAINT FK_TEACHER_ID FOREIGN KEY (TEACHER_ID) REFERENCES TEACHERS(TEACHER_ID),
    --CONSTRAINT FK_GROUP_ID FOREIGN KEY (GROUP_ID) REFERENCES GROUPS(GROUP_ID),
	PRIMARY KEY (SUBJECT_ID, TEACHER_ID, GROUP_ID),
	FOREIGN KEY (SUBJECT_ID) REFERENCES SUBJECTS(SUBJECT_ID),
    FOREIGN KEY (TEACHER_ID) REFERENCES TEACHERS(TEACHER_ID),
    FOREIGN KEY (GROUP_ID) REFERENCES GROUPS(GROUP_ID)
);
GO
INSERT INTO SUBJECT_TEACHER (SUBJECT_ID, TEACHER_ID, GROUP_ID) VALUES
(1, 1, 1),  
(2, 2, 1),  
(3, 3, 2),  
(4, 4, 3),  
(5, 5, 4),  
(6, 6, 4);  


CREATE TABLE MARKS (
    MARK_ID INT PRIMARY KEY IDENTITY(1,1),
    STUDENT_ID INT ,
    SUBJECT_ID INT,
    DATE DATETIME NOT NULL,
    MARK INT NOT NULL,
	 FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(STUDENT_ID),
    FOREIGN KEY (SUBJECT_ID) REFERENCES SUBJECTS(SUBJECT_ID)
);
GO
INSERT INTO MARKS (STUDENT_ID, SUBJECT_ID, DATE, MARK) VALUES
(1, 1, '2024-10-01', 85),
(1, 2, '2024-10-02', 90),
(2, 1, '2024-10-01', 78),
(3, 3, '2024-10-03', 88),
(4, 4, '2024-10-04', 92),
(5, 5, '2024-10-05', 80),
(6, 6, '2024-10-06', 87),
(7, 7, '2024-10-07', 95),
(8, 8, '2024-10-08', 76);


-----
SELECT * FROM STUDENTS,MARKS;
GO
SELECT * FROM GROUPS;
GO
SELECT * FROM TEACHERS;
GO
SELECT * FROM MARKS;
-----
-- TASK 5

SELECT CONCAT(STUDENTS.FIRST_NAME ,' ', STUDENTS.LAST_NAME ) AS ALL_TEACHERS_AND_STUDENTS FROM STUDENTS
UNION
SELECT CONCAT(TEACHERS.FIRST_NAME ,' ' , TEACHERS.LAST_NAME)  FROM TEACHERS;

-- TASK 6
SELECT STUDENTS.FIRST_NAME + ' ' + STUDENTS.LAST_NAME AS FULL_NAME
FROM STUDENTS
WHERE STUDENTS.GROUP_ID = (SELECT GROUP_ID FROM GROUPS WHERE NAME = 'BCE');
-------- AGAIN TASK6
--SELECT * FROM STUDENTS,GROUPS;

--SELECT CONCAT(STUDENTS.FIRST_NAME,' ',STUDENTS.LAST_NAME) FROM STUDENTS
--JOIN GROUPS ON GROUPS.NAME = 'BCE'
--WHERE STUDENTS.GROUP_ID = GROUPS.GROUP_ID;



-- TASK 7
--SELECT * FROM TEACHERS,SUBJECT_TEACHER
--WHERE TEACHERS.TEACHER_ID = SUBJECT_TEACHER.TEACHER_ID;

SELECT DISTINCT T.FIRST_NAME + ' ' + T.LAST_NAME AS TEACHERS_OF_BEE_E FROM TEACHERS T
JOIN SUBJECT_TEACHER ST ON T.TEACHER_ID = ST.TEACHER_ID 
JOIN STUDENTS S ON ST.GROUP_ID = S.GROUP_ID 
JOIN GROUPS G ON S.GROUP_ID = G.GROUP_ID
WHERE G.NAME= 'BEE-E'; 

-- AGAIN TASK 7
--SELECT T.FIRST_NAME + ' ' + T.LAST_NAME AS TEACHERS_OF_BEE_E FROM TEACHERS T
--JOIN SUBJECT_TEACHER ST ON T.TEACHER_ID = ST.TEACHER_ID
--JOIN GROUPS G ON G.GROUP_ID = ST.GROUP_ID
--WHERE G.NAME = 'BEE-E';

-- TASK 8 
--SELECTING STUDENT NAMES AND THE SUBJECTS THEY STUDIED, WHERE THE TEACHER IS 'DR. ABBAS JAVED'
SELECT CONCAT(S.FIRST_NAME ,' ' , S.LAST_NAME) AS STUDENTS_OF_DR_ABBAS_JAVED, SU.TITLE AS SUBJECT_ FROM STUDENTS S
JOIN SUBJECT_TEACHER ST ON ST.GROUP_ID = S.GROUP_ID
JOIN TEACHERS T ON T.TEACHER_ID = ST.TEACHER_ID
JOIN SUBJECTS SU ON SU.SUBJECT_ID = ST.SUBJECT_ID
WHERE CONCAT(T.FIRST_NAME ,' ' , T.LAST_NAME) = 'Dr. Abbas Javed'--Dr. Imran Ahmed


--TASK 9
-- SELECTING THE SUBJECT NAMES AND MARKS FOR STUDENT NAMED 'ALI'
SELECT S.FIRST_NAME,SU.TITLE from STUDENTS S
INNER JOIN MARKS M ON S.STUDENT_ID = M.STUDENT_ID
Inner join SUBJECTS SU ON SU.SUBJECT_ID=M.SUBJECT_ID
WHERE S.FIRST_NAME='Ali';

--TASK 10
SELECT S.FIRST_NAME,SU.TITLE,M.MARK from STUDENTS S
INNER JOIN MARKS M ON S.STUDENT_ID = M.STUDENT_ID
INNER JOIN SUBJECTS SU ON SU.SUBJECT_ID=M.SUBJECT_ID
WHERE S.FIRST_NAME='Ali';

--TASK 11
-- SELECTING SUBJECT NAMES, MARKS, AND TEACHER NAMES FOR STUDENT NAMED 'ALI'
SELECT S.FIRST_NAME,SU.TITLE,M.MARK,T.FIRST_NAME+' '+T.LAST_NAME from STUDENTS S
INNER JOIN MARKS M ON S.STUDENT_ID = M.STUDENT_ID
INNER JOIN SUBJECTS SU ON SU.SUBJECT_ID = M.SUBJECT_ID
INNER JOIN SUBJECT_TEACHER ST ON ST.SUBJECT_ID = M.SUBJECT_ID
INNER JOIN TEACHERS T ON ST.TEACHER_ID = T.TEACHER_ID
WHERE S.FIRST_NAME='Ali';

--TASK 12
-- SELECTING THE SUBJECTS TAUGHT BY 'DR. ARSLA KHAN'
SELECT TITLE FROM SUBJECTS SU
JOIN SUBJECT_TEACHER ST ON ST.SUBJECT_ID = SU.SUBJECT_ID
JOIN TEACHERS T ON T.TEACHER_ID = ST.SUBJECT_ID
WHERE T.FIRST_NAME+' '+T.LAST_NAME = 'DR. ARSLA KHAN'; 

--TASK 13
-- SELECTING STUDENTS WHO BELONG TO THE GROUP 'BEE-T'
SELECT FIRST_NAME +' '+ LAST_NAME FROM STUDENTS S
JOIN GROUPS G ON S.GROUP_ID = G.GROUP_ID
WHERE G.NAME= 'BEE-T';

--TASK 14 
-- SELECTING TEACHERS WHO HAVE NOT TAUGHT ANY SUBJECTS
SELECT  CONCAT(T.FIRST_NAME, ' ', T.LAST_NAME) FROM TEACHERS T
LEFT JOIN SUBJECT_TEACHER ST ON T.TEACHER_ID = ST.TEACHER_ID 
WHERE ST.TEACHER_ID IS NULL; 

--TASK 15
-- SELECTING STUDENT NAMES, MARKS, AND SUBJECTS TAUGHT BY 'DR. ZAID AHMED'
SELECT CONCAT(S.FIRST_NAME ,' ' , S.LAST_NAME) AS STUDENTS_OF_DR_ABBAS_JAVED, SU.TITLE AS SUBJECT_ ,M.MARK AS MARKS FROM STUDENTS S
JOIN SUBJECT_TEACHER ST ON ST.GROUP_ID = S.GROUP_ID
JOIN TEACHERS T ON T.TEACHER_ID = ST.TEACHER_ID
JOIN SUBJECTS SU ON SU.SUBJECT_ID = ST.SUBJECT_ID
JOIN MARKS M ON M.STUDENT_ID = S.STUDENT_ID
WHERE CONCAT(T.FIRST_NAME ,' ' , T.LAST_NAME) = 'DR. ZAID AHMED'

