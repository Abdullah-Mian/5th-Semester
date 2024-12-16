-- Create Database
CREATE DATABASE Triggered_DB;
GO
USE Triggered_DB;
GO

CREATE TABLE orders (
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

INSERT INTO orders (o_id, o_amount, o_date, orderPrice)
VALUES 
(1, 100, '2024-12-11', 5); -- This will fail

INSERT INTO orders (o_id, o_amount, o_date, orderPrice)
VALUES 
(2, 150, '2024-12-11', 20); -- This will succeed

INSERT INTO orders (o_id, o_amount, o_date, orderPrice)
VALUES 
(3, 150, '2024-12-11', 20); -- This will succeed
DROP TRIGGER IF EXISTS trg_insert
insert into orders (o_id, o_amount, o_date, orderPrice) values (15,150, '12-12-2024', 4)
select * from orders
select * from sys.triggers


--------------------------------------------------------------------------------------------

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_exp INT NOT NULL,
    emp_dob DATETIME NOT NULL
);
GO
CREATE TABLE backup_employee (
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
    INSERT INTO backup_employee (emp_id, emp_name, emp_exp, emp_dob)
    VALUES (@deleted_emp_id, @deleted_emp_name, @deleted_emp_exp, @deleted_emp_dob);

    PRINT 'Deleted successfully and backed up';
END;
GO

INSERT INTO employee (emp_id, emp_name, emp_exp, emp_dob)
VALUES 
(1, 'Alice', 5, '1990-01-01'),
(2, 'Bob', 7, '1985-06-15');

DELETE FROM employee WHERE emp_id = 1; -- This will delete and back up the record



------------------------------------------------------------------------------------
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_exp INT NOT NULL,
    emp_dob DATETIME NOT NULL
);

GO
CREATE TABLE employee_changelog (
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
        INSERT INTO employee_changelog (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES ('emp_name', @old_emp_name, @emp_name, ORIGINAL_LOGIN(), GETDATE());
    END

    IF UPDATE(emp_exp)
    BEGIN
        INSERT INTO employee_changelog (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES ('emp_exp', CAST(@old_emp_exp AS NVARCHAR), CAST(@emp_exp AS NVARCHAR), ORIGINAL_LOGIN(), GETDATE());
    END

    IF UPDATE(emp_dob)
    BEGIN
        INSERT INTO employee_changelog (attribute, old_value, new_value, whodidthis, dateofchange)
        VALUES ('emp_dob', CAST(@old_emp_dob AS NVARCHAR), CAST(@emp_dob AS NVARCHAR), ORIGINAL_LOGIN(), GETDATE());
    END
END;
GO

INSERT INTO employee (emp_id, emp_name, emp_exp, emp_dob)
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

select *  from employee_changelog
