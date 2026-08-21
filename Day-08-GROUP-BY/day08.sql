-- Day 08: GROUP BY

USE CollegeDB;

-- ========================================
-- GROUP BY
-- ========================================

-- 1. Count students in each department
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department;


-- 2. Find the average age in each department
SELECT department, AVG(age) AS average_age
FROM Students
GROUP BY department;


-- 3. Find the minimum age in each department
SELECT department, MIN(age) AS minimum_age
FROM Students
GROUP BY department;


-- 4. Find the maximum age in each department
SELECT department, MAX(age) AS maximum_age
FROM Students
GROUP BY department;


-- 5. Find the total age of students in each department
SELECT department, SUM(age) AS total_age
FROM Students
GROUP BY department;


-- ========================================
-- MULTIPLE AGGREGATE FUNCTIONS
-- ========================================

-- 6. Display complete statistics for each department
SELECT
    department,
    COUNT(*) AS total_students,
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age,
    AVG(age) AS average_age
FROM Students
GROUP BY department;


-- ========================================
-- GROUP BY WITH WHERE
-- ========================================

-- 7. Count students in each department
-- who are older than 18
SELECT department, COUNT(*) AS total_students
FROM Students
WHERE age > 18
GROUP BY department;


-- 8. Find the average age of students
-- in each department for students aged 18 or above
SELECT department, AVG(age) AS average_age
FROM Students
WHERE age >= 18
GROUP BY department;


-- ========================================
-- GROUP BY WITH ORDER BY
-- ========================================

-- 9. Display departments by number of students
-- from highest to lowest
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
ORDER BY total_students DESC;


-- 10. Display departments by average age
-- from highest to lowest
SELECT department, AVG(age) AS average_age
FROM Students
GROUP BY department
ORDER BY average_age DESC;


-- ========================================
-- PRACTICE QUERIES
-- ========================================

-- 11. Find the number of students in each department
SELECT department, COUNT(*) AS student_count
FROM Students
GROUP BY department;


-- 12. Find the youngest student age in each department
SELECT department, MIN(age) AS youngest_age
FROM Students
GROUP BY department;


-- 13. Find the oldest student age in each department
SELECT department, MAX(age) AS oldest_age
FROM Students
GROUP BY department;


-- 14. Find departments having students older than 18
SELECT department, COUNT(*) AS student_count
FROM Students
WHERE age > 18
GROUP BY department;
