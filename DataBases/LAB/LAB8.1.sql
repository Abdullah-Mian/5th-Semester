CREATE DATABASE CompanyDB;
GO

USE CompanyDB;
GO
CREATE TABLE Staff (
    staffNo VARCHAR(5) ,
    name NVARCHAR(50),
    position NVARCHAR(20),
    salary INT,
    branchNo VARCHAR(5),
    branchAddress NVARCHAR(100),
    telNo VARCHAR(15)
);
GO

INSERT INTO Staff (staffNo, name, position, salary, branchNo, branchAddress, telNo) VALUES
('S1500', 'Tom Daniels', 'Manager', 46000, 'B001', '8 Jefferson Way, Portland, OR 97201', '503-555-3618'),
('S0003', 'Sally Adams', 'Assistant', 30000, 'B001', '8 Jefferson Way, Portland, OR 97201', '503-555-3618'),
('S0010', 'Mary Martinez', 'Manager', 50000, 'B002', 'City Center Plaza, Seattle, WA 98122', '206-555-6756'),
('S3250', 'Robert Chin', 'Supervisor', 32000, 'B002', 'City Center Plaza, Seattle, WA 98122', '206-555-6756'),
('S2250', 'Sally Stern', 'Manager', 48000, 'B004', '16 – 14th Avenue, Seattle, WA 98128', '206-555-3131'),
('S0415', 'Art Peters', 'Manager', 41000, 'B003', '14 – 8th Avenue, New York, NY 10012', '212-371-3000');
GO
-- CREATED CONCATENATE KEY
ALTER TABLE Staff
ALTER COLUMN staffNo VARCHAR(5) NOT NULL;
GO
ALTER TABLE Staff
ALTER COLUMN branchNo VARCHAR(5) NOT NULL;
GO
ALTER TABLE Staff
ADD CONSTRAINT PK_StaffComposite PRIMARY KEY (staffNo,branchNo);


CREATE TABLE StaffInfo (StaffNo varchar(50) primary key ,branchNo VARCHAR(5) )

SELECT * FROM Staff
