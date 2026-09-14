-- ============================================
-- SQL LEARNING SERIES
-- DAY 11 - DATABASE RELATIONSHIPS & FOREIGN KEYS
-- ============================================


-- ============================================
-- 1. CREATE DATABASE
-- ============================================

CREATE DATABASE school_db;

USE school_db;


-- ============================================
-- 2. CREATE DEPARTMENT TABLE
-- ============================================

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


-- ============================================
-- 3. INSERT DEPARTMENT DATA
-- ============================================

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical'),
(4, 'Civil');


-- ============================================
-- 4. CREATE STUDENTS TABLE
-- ============================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);


-- ============================================
-- 5. INSERT STUDENT DATA
-- ============================================

INSERT INTO students (student_id, student_name, department_id)
VALUES
(101, 'Harish', 1),
(102, 'Arun', 1),
(103, 'Priya', 2),
(104, 'Kavin', 3),
(105, 'Divya', 4);


-- ============================================
-- 6. VIEW TABLES
-- ============================================

SELECT * FROM departments;

SELECT * FROM students;


-- ============================================
-- 7. UNDERSTANDING THE RELATIONSHIP
-- ============================================

-- students.department_id
-- references
-- departments.department_id


-- One department can have many students.
-- This is a ONE-TO-MANY relationship.


-- ============================================
-- 8. TESTING FOREIGN KEY
-- ============================================

-- This will work because department_id = 1 exists.

INSERT INTO students (student_id, student_name, department_id)
VALUES (106, 'Rahul', 1);


-- This will fail because department_id = 10
-- does not exist in departments.

-- INSERT INTO students (student_id, student_name, department_id)
-- VALUES (107, 'Vijay', 10);


-- ============================================
-- 9. FOREIGN KEY PREVENTS INVALID DATA
-- ============================================

-- A student cannot reference a department
-- that does not exist.


-- ============================================
-- 10. DIFFERENT TYPES OF RELATIONSHIPS
-- ============================================

/*
ONE-TO-ONE
-----------
One record in Table A is related to one record
in Table B.

Example:
Person -> Passport


ONE-TO-MANY
-----------
One record in Table A can have many records
in Table B.

Example:
Department -> Students


MANY-TO-MANY
------------
Many records in Table A can be related to many
records in Table B.

Example:
Students -> Courses

Usually implemented using a junction table.
*/


-- ============================================
-- 🧠 PRACTICE PROBLEMS
-- ============================================

/*
1. Create a courses table with:

course_id
course_name


2. Insert at least 4 courses.


3. Create a relationship between students
   and departments.


4. Try inserting a student with an invalid
   department_id.


5. Identify the primary key in each table.


6. Identify the foreign key in students.


7. Explain the relationship between
   departments and students.


8. Give one real-world example of:
   - One-to-One
   - One-to-Many
   - Many-to-Many
*/


-- ============================================
-- 🎯 MINI CHALLENGE
-- ============================================

/*
Create these two tables:

employees
---------
employee_id
employee_name
department_id

departments
-----------
department_id
department_name

Requirements:

1. department_id must be the PRIMARY KEY
   in departments.

2. department_id in employees must be
   a FOREIGN KEY.

3. Insert at least 4 departments.

4. Insert at least 6 employees.

5. Try inserting an employee with an invalid
   department_id and observe what happens.
*/
