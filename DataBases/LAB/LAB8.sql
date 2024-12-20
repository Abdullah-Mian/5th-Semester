CREATE DATABASE LAB8;
GO
USE LAB8;
GO


CREATE TABLE StudentCourses
(
	StdSSN VARCHAR(5),
	StdCity VARCHAR(20),
	StdClass VARCHAR(5),
	OfferNo VARCHAR(5),
	OffTerm VARCHAR(10),
	OffYear INT,
	EnrGrade float,
	CourseNo VARCHAR(5),
	CrsDesc VARCHAR(5)
);

GO
INSERT INTO StudentCourses
	(StdSSN, StdCity, StdClass, OfferNo, OffTerm, OffYear, EnrGrade, CourseNo, CrsDesc)
VALUES
	('S1', 'SEATTLE', 'JUN', 'O1', 'FALL', 2006, 3.5, 'C1', 'DB'),
	('S1', 'SEATTLE', 'JUN', 'O2', 'FALL', 2006, 3.3, 'C2', 'VB'),
	('S2', 'BOTHELL', 'JUN', 'O3', 'SPRING', 2007, 3.1, 'C3', 'OO'),
	('S2', 'BOTHELL', 'JUN', 'O2', 'FALL', 2006, 3.4, 'C2', 'VB');

--Already in 1NF

GO
-- CREATED CONCATENATE KEY
ALTER TABLE StudentCourses
ALTER COLUMN StdSSN VARCHAR(5) NOT NULL;
GO
ALTER TABLE StudentCourses
ALTER COLUMN OfferNo VARCHAR(5) NOT NULL;
GO
ALTER TABLE StudentCourses
ADD CONSTRAINT PK_StudentCourses PRIMARY KEY (StdSSN, OfferNo);

GO

-- towards 2NF
Create Table Studentinfo
(
	StdSSN VARCHAR(5),
	StdCity VARCHAR(20)
)
GO

Create Table OfferNoDependents
(
	OfferNo VARCHAR(5),
	OffTerm VARCHAR(10),
	OffYear INT,
	CourseNo VARCHAR(5),
	CrsDesc VARCHAR(5)
)

GO

-- 1st new table ADDING PRIMARY KEY
ALTER TABLE Studentinfo
ALTER COLUMN StdSSN VARCHAR(5) NOT NULL;
GO
ALTER TABLE Studentinfo
ADD CONSTRAINT PK_stdSSN Primary Key (StdSSN)

-- 2nd new table ADDING PRIMARY KEY
ALTER TABLE OfferNoDependents
ALTER COLUMN OfferNo VARCHAR(5) NOT NULL;
GO
ALTER TABLE OfferNoDependents
ADD CONSTRAINT PK_offerNo Primary Key (OfferNo)

GO

-- Insert values into Studentinfo 
INSERT INTO Studentinfo
	(StdSSN, StdCity)
VALUES
	('S1', 'SEATTLE'),
	('S2', 'BOTHELL');
-- Insert into OfferNoDependents 
INSERT INTO OfferNoDependents
	(OfferNo, OffTerm, OffYear, CourseNo, CrsDesc)
VALUES
	('O1', 'FALL', 2006, 'C1', 'DB'),
	('O2', 'FALL', 2006, 'C2', 'VB'),
	('O3', 'SPRING', 2007, 'C3', 'OO');


-- Making OfferNo and StdSSN Foreign Keys in main table
ALTER TABLE StudentCourses
ADD CONSTRAINT FK_stdSSN1 FOREIGN KEY (StdSSN) REFERENCES Studentinfo(StdSSN),
    CONSTRAINT FK_OfferNo1 FOREIGN KEY (OfferNo) REFERENCES OfferNoDependents(OfferNo);

-- DELETING MOVED COLUMNS FROM StudentCourses
ALTER TABLE StudentCourses
DROP COLUMN OffTerm,OffYear,CourseNo,CrsDesc,StdCity





-- TOWARDS 3NF
CREATE TABLE COURSE
(
	CourseNo VARCHAR(5) PRIMARY KEY,
	CrsDesc VARCHAR(5)
)
GO
INSERT INTO COURSE
	(CourseNo, CrsDesc)
VALUES
	( 'C1', 'DB'),
	( 'C2', 'VB'),
	( 'C3', 'OO');
GO
ALTER TABLE OfferNoDependents
ADD CONSTRAINT FK_CourseNo FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo)
GO
ALTER TABLE OfferNoDependents
DROP COLUMN CrsDesc

-- 3NF ACHIVED

SELECT *
FROM StudentCourses
GO
SELECT *
FROM Studentinfo
GO
SELECT *
FROM OfferNoDependents
GO
SELECT *
FROM COURSE