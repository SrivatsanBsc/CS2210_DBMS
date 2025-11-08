-- ======================================================================
-- Lab Experiment – GROUP BY, HAVING, ORDER BY and INDEXING
-- ======================================================================

-- Objective:
-- 1. To understand and apply the SQL GROUP BY clause to group rows based on column values and perform aggregate operations.
-- 2. To explore the HAVING clause for filtering grouped data post aggregation.
-- 3. To use the ORDER BY clause to sort query results in ascending or descending order.
-- 4. To implement Indexing in SQL for improving query performance.

-- ======================================================================
-- Step 1: Create Database
DROP DATABASE IF EXISTS HospitalDB;
-- 15:26:42	DROP DATABASE IF EXISTS HospitalDB	2 row(s) affected	0.078 sec

CREATE DATABASE HospitalDB;
-- 15:27:05	CREATE DATABASE HospitalDB	1 row(s) affected	0.015 sec

USE HospitalDB;
-- 15:27:23	USE HospitalDB	0 row(s) affected	0.000 sec


-- ======================================================================
-- Step 2: Create Tables
-- Create the relational schema for Patients and Visits.

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);
-- 15:27:45	CREATE TABLE Patients (     patient_id INT PRIMARY KEY AUTO_INCREMENT,     patient_name VARCHAR(50),     age INT,     gender VARCHAR(10) )	0 row(s) affected	0.047 sec


CREATE TABLE Visits (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    visit_date DATE,
    doctor_id INT,
    diagnosis VARCHAR(100),
    treatment_cost DECIMAL(10,2),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
-- 15:28:09	CREATE TABLE Visits (     visit_id INT PRIMARY KEY AUTO_INCREMENT,     patient_id INT,     visit_date DATE,     doctor_id INT,     diagnosis VARCHAR(100),     treatment_cost DECIMAL(10,2),     FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) )	0 row(s) affected	0.078 sec


-- OUTPUT:
-- (After creating tables, run DESC Patients; and DESC Visits; to verify structure.)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Step 3: Insert Sample Data
-- Insert sample records into both tables.
-- Add at least 5 patients and 8–10 visit records with varying diagnoses and treatment costs.
-- WRITE YOUR QUERIES BELOW



-- OUTPUT:
-- (Run SELECT * FROM Patients; and SELECT * FROM Visits; to verify inserted data.)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- QUICK INTRODUCTION (for notes)
-- GROUP BY: Groups rows sharing a value and performs aggregate functions like SUM(), COUNT(), AVG().
-- HAVING: Filters grouped data after aggregation.
-- ORDER BY: Sorts query results (ASC by default, DESC for descending order).
-- INDEXING: Improves query performance by creating a quick lookup on key columns.

-- ======================================================================
-- STUDENT ACTIVITY TASKS
-- ======================================================================

-- Task 1: Grouping Data by Diagnosis
-- Group the data based on diagnosis and calculate the average treatment cost for each diagnosis.
-- WRITE YOUR QUERY BELOW



-- OUTPUT:
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 2: Filtering with HAVING Clause
-- Filter the grouped data to show only diagnoses where the average treatment cost is greater than 200.
-- WRITE YOUR QUERY BELOW



-- OUTPUT:
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 3: Sorting the Results
-- Sort the results from Task 1 in descending order of average treatment cost.
-- WRITE YOUR QUERY BELOW



-- OUTPUT:
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- Task 4: Optimizing with Indexes
-- Create an index on the patient_id column in the Visits table to improve performance.
-- Then run a query that retrieves all visits for a particular patient.
-- WRITE YOUR QUERIES BELOW



-- OUTPUT:
-- (Verify index creation using SHOW INDEX FROM Visits;)
-- WRITE YOUR OUTPUT BELOW



-- ======================================================================
-- END OF EXPERIMENT
-- ======================================================================