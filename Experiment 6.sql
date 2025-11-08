-- ======================================================================
-- Lab Experiment – Implementation of Triggers in SQL
-- ======================================================================

-- Objective:
-- 1. To understand and create triggers in MySQL.
-- 2. To implement BEFORE and AFTER triggers for INSERT, UPDATE, and DELETE operations.

-- ======================================================================
-- Step 1: Create Database
DROP DATABASE IF EXISTS SchoolDB;
-- 15:10:18	DROP DATABASE IF EXISTS SchoolDB	2 row(s) affected	0.078 sec

CREATE DATABASE SchoolDB;
-- 15:10:47	CREATE DATABASE SchoolDB	1 row(s) affected	0.016 sec

USE SchoolDB;
-- 15:11:05	USE SchoolDB	0 row(s) affected	0.000 sec


-- ======================================================================
-- Step 2: Create Tables
-- Create a Students table and a Logs table to record trigger actions.

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(50),
    Age INT,
    Marks DECIMAL(5,2)
);
-- 15:11:24	CREATE TABLE Students (     StudentID INT PRIMARY KEY AUTO_INCREMENT,     StudentName VARCHAR(50),     Age INT,     Marks DECIMAL(5,2) )	0 row(s) affected	0.047 sec


CREATE TABLE StudentLogs (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    ActionType VARCHAR(50),
    ActionDate DATETIME,
    Description VARCHAR(200)
);
-- 15:11:42	CREATE TABLE StudentLogs (     LogID INT PRIMARY KEY AUTO_INCREMENT,     ActionType VARCHAR(50),     ActionDate DATETIME,     Description VARCHAR(200) )	0 row(s) affected	0.047 sec

-- OUTPUT:
-- (Run DESC Students; and DESC StudentLogs; to verify structure)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 1: BEFORE INSERT Trigger
-- Create a trigger to ensure that no student can be inserted with Marks greater than 100.
-- WRITE YOUR TRIGGER CREATION QUERY BELOW


-- OUTPUT:
-- (Try inserting a record with Marks > 100 to verify validation)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 2: AFTER INSERT Trigger
-- Create a trigger that inserts a log entry into StudentLogs whenever a new student is added.
-- WRITE YOUR TRIGGER CREATION QUERY BELOW


-- OUTPUT:
-- (Insert a valid record and check StudentLogs for entries)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 3: AFTER UPDATE Trigger
-- Create a trigger that logs any update made to a student’s marks.
-- WRITE YOUR TRIGGER CREATION QUERY BELOW


-- OUTPUT:
-- (Update marks of a student and verify the StudentLogs table)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 4: AFTER DELETE Trigger
-- Create a trigger that logs when a student record is deleted.
-- WRITE YOUR TRIGGER CREATION QUERY BELOW


-- OUTPUT:
-- (Delete a student and check StudentLogs for the corresponding entry)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- END OF EXPERIMENT – Implementation of Triggers
-- ======================================================================