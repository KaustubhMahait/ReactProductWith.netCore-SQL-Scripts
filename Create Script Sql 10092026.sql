
-- 1.

-- CREATE DATABASE Work365;
-- GO
   
-- USE Work365;
-- GO

-- 2



--CREATE TABLE tbl_RPR_Roles
--(
--    RoleId          INT IDENTITY(1,1) PRIMARY KEY,
--    RoleName        NVARCHAR(50) NOT NULL,
--    Description     NVARCHAR(200) NULL,
--    IsActive        BIT NOT NULL DEFAULT(1),
--    CreatedOn       DATETIME NOT NULL DEFAULT(GETDATE())
--);
--GO

--INSERT INTO tbl_RPR_Roles
--(
--    RoleName,
--    Description
--)
--VALUES
--('Admin','System Administrator'),
--('Manager','Department Manager'),
--('Employee','Normal Employee');
--GO

-- select * from tbl_RPR_Roles


-- 2

--CREATE TABLE tbl_RPR_Users
--(
--    UserId              INT IDENTITY(1,1) PRIMARY KEY,

--    UserName            NVARCHAR(50) NOT NULL UNIQUE,

--    PasswordHash        NVARCHAR(500) NOT NULL,

--    FirstName           NVARCHAR(100) NOT NULL,

--    LastName            NVARCHAR(100) NULL,

--    Email               NVARCHAR(150) NOT NULL UNIQUE,

--    MobileNumber        NVARCHAR(15) NULL,

--    RoleId              INT NOT NULL,

--    IsActive            BIT NOT NULL DEFAULT(1),

--    CreatedOn           DATETIME NOT NULL DEFAULT(GETDATE()),

--    ModifiedOn          DATETIME NULL
--);
--GO

--- 3 

--INSERT INTO tbl_RPR_Users
--(
--    UserName,
--    PasswordHash,
--    FirstName,
--    LastName,
--    Email,
--    MobileNumber,
--    RoleId
--)
--VALUES
--(
--    'admin',
--    'Pass@123',
--    'Kaustubh',
--    'Bhosale',
--    'admin@test.com',
--    '9876543210',
--    1
--);
--GO



-- 4 
--CREATE TABLE tbl_RPR_RefreshTokens
--(
--    RefreshTokenId      INT IDENTITY(1,1) PRIMARY KEY,

--    UserId              INT NOT NULL,

--    Token               NVARCHAR(500) NOT NULL,

--    ExpiryDate          DATETIME NOT NULL,

--    CreatedOn           DATETIME NOT NULL DEFAULT(GETDATE()),

--    RevokedOn           DATETIME NULL,

--    IsRevoked           BIT NOT NULL DEFAULT(0),

--    CreatedByIP         NVARCHAR(100) NULL,

--    RevokedByIP         NVARCHAR(100) NULL,

--    ReplacedByToken     NVARCHAR(500) NULL,

--    CONSTRAINT FK_RefreshTokens_Users
--        FOREIGN KEY(UserId)
--        REFERENCES tbl_RPR_Users(UserId)
--);
--GO


select * from tbl_RPR_Users

select * from tbl_RPR_RefreshTokens

--CREATE TABLE tbl_RPR_Employees
--(
--    EmployeeId      INT IDENTITY(1,1) PRIMARY KEY,

--    EmployeeName    NVARCHAR(100) NOT NULL,

--    Email           NVARCHAR(150) NOT NULL,

--    Department      NVARCHAR(100) NOT NULL,

--    Salary          DECIMAL(18,2) NOT NULL,

--    IsActive        BIT NOT NULL DEFAULT(1),

--    CreatedOn       DATETIME NOT NULL DEFAULT(GETDATE())
--);

--INSERT INTO tbl_RPR_Employees
--(EmployeeName, Email, Department, Salary, IsActive)

--VALUES

--('Rahul Sharma','rahul@test.com','IT',50000,1),

--('Amit Patil','amit@test.com','HR',42000,1),

--('Sneha Joshi','sneha@test.com','Finance',65000,1),

--('Priya Kulkarni','priya@test.com','Sales',47000,1),

--('Rohit Deshmukh','rohit@test.com','IT',70000,1);

select * from tbl_RPR_Users
select * from tbl_RPR_Employees


