-- Day 07: Aggregate Functions

USE CollegeDB;

-- ========================================
-- COUNT()
-- ========================================

-- 1. Count all students
SELECT COUNT(*)
FROM Students;

-- 2. Count student IDs
SELECT COUNT(student_id)
FROM Students;

-- 3. Count students in CSE
SELECT COUNT(*)
FROM Students
WHERE department = 'CSE';


-- ========================================
-- MIN()
-- ========================================

-- 4. Find the minimum age
SELECT MIN(age)
FROM Students;


-- ========================================
-- MAX()
-- ========================================

-- 5. Find the maximum age
SELECT MAX(age)
FROM Students;


-- ========================================
-- SUM()
-- ========================================

-- 6. Find the sum of all student ages
SELECT SUM(age)
FROM Students;


-- ========================================
-- AVG()
-- ========================================

-- 7. Find the average age
SELECT AVG(age)
FROM Students;


-- ========================================
-- AGGREGATE FUNCTIONS TOGETHER
-- ========================================

-- 8. Find count, minimum age, maximum age and average age
SELECT
    COUNT(*) AS total_students,
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    AVG(age) AS average_age
FROM Students;


-- 9. Find aggregate information for CSE students
SELECT
    COUNT(*) AS total_cse_students,
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    AVG(age) AS average_age
FROM Students
WHERE department = 'CSE';


-- ========================================
-- COUNT DISTINCT
-- ========================================

-- 10. Count the number of different departments
SELECT COUNT(DISTINCT department)
FROM Students;

-- 11. Count the number of different ages
SELECT COUNT(DISTINCT age)
FROM Students;


-- ========================================
-- AGGREGATE FUNCTIONS WITH WHERE
-- ========================================

-- 12. Find the average age of students from IT
SELECT AVG(age)
FROM Students
WHERE department = 'IT';

-- 13. Find the maximum age of CSE students
SELECT MAX(age)
FROM Students
WHERE department = 'CSE';

-- 14. Find the minimum age of ECE students
SELECT MIN(age)
FROM Students
WHERE department = 'ECE';

-- 15. Count students who are older than 18
SELECT COUNT(*)
FROM Students
WHERE age > 18;
