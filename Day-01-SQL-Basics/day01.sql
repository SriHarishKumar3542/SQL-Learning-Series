-- Day 01: SQL Basics

-- Create a database
CREATE DATABASE CollegeDB;

-- Select the database
USE CollegeDB;

-- Create a Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT
);

-- Insert student records
INSERT INTO Students
VALUES
(1, 'Arun', 'CSE', 18),
(2, 'Priya', 'IT', 19),
(3, 'Rahul', 'ECE', 18),
(4, 'Anu', 'CSE', 19),
(5, 'Karthik', 'MECH', 18);

-- Display all students
SELECT * FROM Students;
