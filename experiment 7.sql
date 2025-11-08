-- ======================================================================
-- Lab Experiment – Implementation of Procedures in SQL
-- ======================================================================

-- Objective:
-- 1. To understand and create stored procedures in MySQL.
-- 2. To implement procedures for performing INSERT, UPDATE, and DELETE operations.

-- ======================================================================
-- Step 1: Create Database
DROP DATABASE IF EXISTS CompanyDB;
-- 15:13:59	DROP DATABASE IF EXISTS CompanyDB	1 row(s) affected	0.031 sec

CREATE DATABASE CompanyDB;
-- 15:14:16	CREATE DATABASE CompanyDB	1 row(s) affected	0.015 sec

USE CompanyDB;
-- 15:14:48	USE CompanyDB	0 row(s) affected	0.000 sec

-- ======================================================================
-- Step 2: Create Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
-- 15:15:20	CREATE TABLE Employees (     EmpID INT PRIMARY KEY AUTO_INCREMENT,     EmpName VARCHAR(50),     Department VARCHAR(50),     Salary DECIMAL(10,2) )	0 row(s) affected	0.047 sec

-- OUTPUT:
-- (Run DESC Employees; to verify structure)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Step 3: Insert Sample Data
INSERT INTO Employees (EmpName, Department, Salary) VALUES
('John', 'IT', 55000),
('Alice', 'HR', 48000),
('Bob', 'Finance', 60000);
-- 15:15:45	INSERT INTO Employees (EmpName, Department, Salary) VALUES ('John', 'IT', 55000), ('Alice', 'HR', 48000), ('Bob', 'Finance', 60000)	3 row(s) affected Records: 3  Duplicates: 0  Warnings: 0	0.000 sec

-- OUTPUT:
-- (Run SELECT * FROM Employees; to verify data)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 1: Create a Basic Procedure
-- Create a procedure named `DisplayEmployees` that retrieves all records from the Employees table.
-- WRITE YOUR PROCEDURE CREATION QUERY BELOW


-- CALL DisplayEmployees();
-- OUTPUT:
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 2: Procedure for INSERT Operation
-- Create a procedure named `AddEmployee` that inserts a new employee record.
-- Parameters: (p_name VARCHAR(50), p_dept VARCHAR(50), p_salary DECIMAL(10,2))
-- WRITE YOUR PROCEDURE CREATION QUERY BELOW


-- CALL AddEmployee('David', 'Marketing', 52000);
-- OUTPUT:
-- (Run SELECT * FROM Employees; to verify insertion)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 3: Procedure for UPDATE Operation
-- Create a procedure named `UpdateSalary` to update an employee’s salary based on EmpID.
-- Parameters: (p_empid INT, p_salary DECIMAL(10,2))
-- WRITE YOUR PROCEDURE CREATION QUERY BELOW


-- CALL UpdateSalary(2, 50000);
-- OUTPUT:
-- (Run SELECT * FROM Employees; to verify update)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 4: Procedure for DELETE Operation
-- Create a procedure named `RemoveEmployee` to delete an employee record based on EmpID.
-- Parameters: (p_empid INT)
-- WRITE YOUR PROCEDURE CREATION QUERY BELOW


-- CALL RemoveEmployee(3);
-- OUTPUT:
-- (Run SELECT * FROM Employees; to verify deletion)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- END OF EXPERIMENT – Implementation of Procedures
-- ======================================================================