Create Database University;
Drop database University;
CREATE TABLE Groups (
    group_id INT PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);
INSERT INTO Groups (group_id, name) VALUES
(1, 'BCE'),
(2, 'BEE-P'),
(3, 'BEE-E'),
(4, 'BEE-T');



CREATE TABLE Students (
    student_id INT PRIMARY KEY ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES Groups(group_id) on delete SET null,

);
INSERT INTO Students (student_id, first_name, last_name, group_id) VALUES
(1, 'Ali', 'Khan', 1),
(2, 'Sara', 'Ahmed', 1),
(3, 'Hassan', 'Raza', 2),
(4, 'Fatima', 'Bashir', 2),
(5, 'Bilal', 'Shah', 3),
(6, 'Ayesha', 'Fatima', 3),
(7, 'Owais', 'Naseem', 4),
(8, 'Zain', 'Ullah', 4);


CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
);
INSERT INTO Teachers (teacher_id,first_name,last_name) VALUES
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

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);
INSERT INTO Subjects (subject_id, title) VALUES
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
select * from Subjects;


CREATE TABLE Subject_Teacher (
    subject_id INT,
    teacher_id INT,
    group_id INT,
    PRIMARY KEY (subject_id, teacher_id, group_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id) ,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) ,
    FOREIGN KEY (group_id) REFERENCES Groups(group_id) ,
);

INSERT INTO Subject_Teacher (subject_id, teacher_id, group_id) VALUES
(1, 1, 1),  
(2, 2, 1),  
(3, 3, 2),  
(4, 4, 3),  
(5, 5, 4),  
(6, 6, 4);  


CREATE TABLE Marks (
    mark_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    subject_id INT,
    date DATETIME NOT NULL,
    mark INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Marks (student_id, subject_id, date, mark) VALUES
(1, 1, '2024-10-01', 85),
(1, 2, '2024-10-02', 90),
(2, 1, '2024-10-01', 78),
(3, 3, '2024-10-03', 88),
(4, 4, '2024-10-04', 92),
(5, 5, '2024-10-05', 80),
(6, 6, '2024-10-06', 87),
(7, 7, '2024-10-07', 95),
(8, 8, '2024-10-08', 76);

SELECT Students.first_name + ' ' + Students.last_name AS full_name FROM Students
UNION
SELECT Teachers.first_name + ' ' + Teachers.last_name AS full_name FROM Teachers;

SELECT s.first_name + ' ' + s.last_name AS full_name
FROM Students s
WHERE s.group_id = (SELECT group_id FROM Groups WHERE name = 'BCE');

SELECT DISTINCT t.first_name + ' ' + t.last_name AS teacher_full_name
FROM Teachers t
JOIN Subject_Teacher st ON t.teacher_id = st.teacher_id
JOIN Students s ON st.group_id = s.group_id
WHERE s.group_id = (SELECT group_id FROM Groups WHERE name = 'BEE-E');

SELECT s.first_name + ' ' + s.last_name AS student_full_name,
       sub.title AS subject_name
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE sub.subject_id IN (
    SELECT st.subject_id
    FROM Subject_Teacher st
    JOIN Teachers t ON st.teacher_id = t.teacher_id
    WHERE t.first_name + ' ' + t.last_name = 'Dr. Abbas Javed'
);


SELECT sub.title AS subject_name
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE s.first_name = 'Ali';


SELECT sub.title AS subject_name, m.mark
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
WHERE s.first_name = 'Ali';


SELECT sub.title AS subject_name, m.mark, CONCAT(t.first_name, ' ', t.last_name) AS teacher_full_name
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
JOIN Subject_Teacher st ON sub.subject_id = st.subject_id
JOIN Teachers t ON st.teacher_id = t.teacher_id
WHERE s.first_name = 'Ali';


SELECT sub.title AS subject_name
FROM Subjects sub
JOIN Subject_Teacher st ON sub.subject_id = st.subject_id
JOIN Teachers t ON st.teacher_id = t.teacher_id
WHERE t.first_name+ ' '+ t.last_name = 'Dr. Arsla Khan';


SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_full_name
FROM Students s
WHERE s.group_id = (SELECT group_id FROM Groups WHERE name = 'BEE-T');


SELECT CONCAT(t.first_name, ' ', t.last_name) AS teacher_full_name
FROM Teachers t
LEFT JOIN Subject_Teacher st ON t.teacher_id = st.teacher_id
WHERE st.teacher_id IS NULL;


SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_full_name, m.mark, sub.title AS subject_name
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
JOIN Subject_Teacher st ON sub.subject_id = st.subject_id
JOIN Teachers t ON st.teacher_id = t.teacher_id
WHERE CONCAT(t.first_name, ' ', t.last_name) = 'Dr. Zaid Ahmed';
