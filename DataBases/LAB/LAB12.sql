-- Create Database
CREATE DATABASE Triggered_DB;
GO
USE Triggered_DB;
GO

CREATE TABLE orders
(
    o_id INT PRIMARY KEY,
    o_amount INT NOT NULL,
    o_date DATETIME NOT NULL,
    orderPrice INT NOT NULL
);
GO

CREATE OR ALTER TRIGGER trg_insert
ON orders
FOR INSERT
AS
DECLARE @o_price INT;

BEGIN
    SELECT @o_price = i.orderPrice
    FROM inserted i;

    IF @o_price < 10
    BEGIN
        PRINT 'Minimum order price is 10';
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        PRINT 'Inserted successfully';
    END
END;
GO

INSERT INTO orders
    (o_id, o_amount, o_date, orderPrice)
VALUES
    (1, 100, '2024-12-11', 5);
-- This will fail

INSERT INTO orders
    (o_id, o_amount, o_date, orderPrice)
VALUES
    (2, 150, '2024-12-11', 20);
-- This will succeed

INSERT INTO orders
    (o_id, o_amount, o_date, orderPrice)
VALUES
    (3, 150, '2024-12-11', 20);
-- This will succeed
DROP TRIGGER IF EXISTS trg_insert
insert into orders
    (o_id, o_amount, o_date, orderPrice)
values
    (15, 150, '12-12-2024', 4)
select *
from orders
select *
from sys.triggers


--------------------------------------------------------------------------------------------

CREATE TABLE employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_exp INT NOT NULL,
    emp_dob DATETIME NOT NULL
);
GO
CREATE TABLE backup_employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_exp INT,
    emp_dob DATETIME
);
GO

CREATE OR ALTER TRIGGER trg_del
ON employee
FOR DELETE
AS
BEGIN
    DECLARE @deleted_emp_id INT;
    DECLARE @deleted_emp_name VARCHAR(100);
    DECLARE @deleted_emp_exp INT;
    DECLARE @deleted_emp_dob DATETIME;

    -- Fetch deleted row data
    SELECT
        @deleted_emp_id = d.emp_id,
        @deleted_emp_name = d.emp_name,
        @deleted_emp_exp = d.emp_exp,
        @deleted_emp_dob = d.emp_dob
    FROM deleted d;

    -- Insert into backup_employee
    INSERT INTO backup_employee
        (emp_id, emp_name, emp_exp, emp_dob)
    VALUES
        (@deleted_emp_id, @deleted_emp_name, @deleted_emp_exp, @deleted_emp_dob);

    PRINT 'Deleted successfully and backed up';
END;
GO

INSERT INTO employee
    (emp_id, emp_name, emp_exp, emp_dob)
VALUES
    (1, 'Alice', 5, '1990-01-01'),
    (2, 'Bob', 7, '1985-06-15');

DELETE FROM employee WHERE emp_id = 1;
-- This will delete and back up the record



------------------------------------------------------------------------------------
CREATE TABLE employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_exp INT NOT NULL,
    emp_dob DATETIME NOT NULL
);

GO
CREATE TABLE employee_changelog
(
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    attribute VARCHAR(100) NOT NULL,
    old_value NVARCHAR(255),
    new_value NVARCHAR(255),
    whodidthis NVARCHAR(255),
    dateofchange DATETIME DEFAULT GETDATE()
);
GO
CREATE OR ALTER TRIGGER trg_update
ON employee
FOR UPDATE
AS
BEGIN
    DECLARE @emp_name VARCHAR(100), @old_emp_name VARCHAR(100);
    DECLARE @emp_exp INT, @old_emp_exp INT;
    DECLARE @emp_dob DATETIME, @old_emp_dob DATETIME;

    -- Fetch old and new values for comparison
    SELECT
        @old_emp_name = d.emp_name,
        @old_emp_exp = d.emp_exp,
        @old_emp_dob = d.emp_dob
    FROM deleted d;

    SELECT
        @emp_name = i.emp_name,
        @emp_exp = i.emp_exp,
        @emp_dob = i.emp_dob
    FROM inserted i;

    -- Log changes if an attribute is updated
    IF UPDATE(emp_name)
    BEGIN
        INSERT INTO employee_changelog
            (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES
            ('emp_name', @old_emp_name, @emp_name, ORIGINAL_LOGIN(), GETDATE());
    END

    IF UPDATE(emp_exp)
    BEGIN
        INSERT INTO employee_changelog
            (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES
            ('emp_exp', CAST(@old_emp_exp AS NVARCHAR), CAST(@emp_exp AS NVARCHAR), ORIGINAL_LOGIN(), GETDATE());
    END

    IF UPDATE(emp_dob)
    BEGIN
        INSERT INTO employee_changelog
            (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES
            ('emp_dob', CAST(@old_emp_dob AS NVARCHAR), CAST(@emp_dob AS NVARCHAR), ORIGINAL_LOGIN(), GETDATE());
    END
END;
GO

INSERT INTO employee
    (emp_id, emp_name, emp_exp, emp_dob)
VALUES
    (1, 'Alice', 5, '1990-01-01'),
    (2, 'Bob', 7, '1985-06-15');

UPDATE employee
SET emp_name = 'Alice Cooper'
WHERE emp_id = 1;

UPDATE employee
SET emp_exp = 10
WHERE emp_id = 1;

UPDATE employee
SET emp_dob = '1989-12-31'
WHERE emp_id = 2;

select *
from employee_changelog

----------------------------------------------- TASKS

CREATE DATABASE Students;
GO

USE Students;
GO

CREATE TABLE StudentDetails
(
    rollno INT PRIMARY KEY,
    s_name NVARCHAR(100),
    semester INT,
    age INT,
    dob DATETIME
);

CREATE TABLE ContactDetails
(
    rollno INT,
    c_type NVARCHAR(50),
    c_number NVARCHAR(20),
    FOREIGN KEY (rollno) REFERENCES StudentDetails(rollno) ON DELETE NO ACTION
);

CREATE TABLE Address
(
    rollno INT,
    houseno INT,
    streetno INT,
    block NVARCHAR(10),
    city NVARCHAR(50),
    FOREIGN KEY (rollno) REFERENCES StudentDetails(rollno) ON DELETE NO ACTION
);

CREATE TABLE OperationLog
(
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    rollno INT,
    operation NVARCHAR(50),
    performed_by NVARCHAR(100),
    operation_time DATETIME DEFAULT GETDATE()
);
GO
CREATE TRIGGER trg_InsertStudentLog
ON StudentDetails
AFTER INSERT
AS
BEGIN
    DECLARE @rollno INT;
    SELECT @rollno = rollno
    FROM INSERTED;

    INSERT INTO OperationLog
        (rollno, operation, performed_by)
    VALUES
        (@rollno, 'INSERT', SYSTEM_USER);
END;

GO
ALTER TRIGGER trg_InsertStudentLog
ON StudentDetails
AFTER INSERT
AS
BEGIN
    DECLARE @rollno INT, @age INT, @semester INT;
    SELECT @rollno = rollno, @age = age, @semester = semester
    FROM INSERTED;

    IF (@age > 20 OR @semester NOT BETWEEN 1 AND 2)
    BEGIN
        RAISERROR('Student must not be over 20 years old and must be a 1st year student.', 16, 1);
        ROLLBACK TRANSACTION;
    END;

    INSERT INTO OperationLog
        (rollno, operation, performed_by)
    VALUES
        (@rollno, 'INSERT', SYSTEM_USER);
END;


CREATE TABLE DeletedContacts
(
    rollno INT,
    c_type NVARCHAR(50),
    c_number NVARCHAR(20),
    deleted_by NVARCHAR(100),
    deletion_time DATETIME DEFAULT GETDATE()
);

CREATE TABLE DeletedAddresses
(
    rollno INT,
    houseno INT,
    streetno INT,
    block NVARCHAR(10),
    city NVARCHAR(50),
    deleted_by NVARCHAR(100),
    deletion_time DATETIME DEFAULT GETDATE()
);

CREATE TABLE DeletedContacts
(
    rollno INT,
    c_type NVARCHAR(50),
    c_number NVARCHAR(20),
    deleted_by NVARCHAR(100),
    deletion_time DATETIME DEFAULT GETDATE()
);

CREATE TABLE DeletedAddresses
(
    rollno INT,
    houseno INT,
    streetno INT,
    block NVARCHAR(10),
    city NVARCHAR(50),
    deleted_by NVARCHAR(100),
    deletion_time DATETIME DEFAULT GETDATE()
);
GO
CREATE TRIGGER trg_DeleteStudent
ON StudentDetails
AFTER DELETE
AS
BEGIN
    INSERT INTO DeletedContacts
        (rollno, c_type, c_number, deleted_by)
    SELECT rollno, c_type, c_number, SYSTEM_USER
    FROM ContactDetails
    WHERE rollno IN (SELECT rollno
    FROM DELETED);

    INSERT INTO DeletedAddresses
        (rollno, houseno, streetno, block, city, deleted_by)
    SELECT rollno, houseno, streetno, block, city, SYSTEM_USER
    FROM Address
    WHERE rollno IN (SELECT rollno
    FROM DELETED);

    DELETE FROM ContactDetails WHERE rollno IN (SELECT rollno
    FROM DELETED);
    DELETE FROM Address WHERE rollno IN (SELECT rollno
    FROM DELETED);
END;

CREATE TABLE UpdateLog
(
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    rollno INT,
    column_name NVARCHAR(50),
    old_value NVARCHAR(MAX),
    new_value NVARCHAR(MAX),
    updated_by NVARCHAR(100),
    update_time DATETIME DEFAULT GETDATE()
);
GO
CREATE TRIGGER trg_UpdateStudent
ON StudentDetails
AFTER UPDATE
AS
BEGIN
    DECLARE @rollno INT, @column_name NVARCHAR(50), @old_value NVARCHAR(MAX), @new_value NVARCHAR(MAX);

    SELECT @rollno = rollno
    FROM INSERTED;

    -- Example: Log name changes
    IF EXISTS (SELECT 1
    FROM INSERTED I JOIN DELETED D ON I.rollno = D.rollno
    WHERE I.s_name <> D.s_name)
    BEGIN
        INSERT INTO UpdateLog
            (rollno, column_name, old_value, new_value, updated_by)
        SELECT D.rollno, 's_name', D.s_name, I.s_name, SYSTEM_USER
        FROM INSERTED I
            JOIN DELETED D ON I.rollno = D.rollno
        WHERE I.s_name <> D.s_name;
    END;

-- Repeat for other columns as needed.
END;
GO
CREATE TRIGGER trg_RestrictDDL
ON DATABASE
FOR DROP_TABLE, ALTER_TABLE
AS
BEGIN
    RAISERROR('DROP and ALTER commands are restricted on this database.', 16, 1);
    ROLLBACK TRANSACTION;
END;
