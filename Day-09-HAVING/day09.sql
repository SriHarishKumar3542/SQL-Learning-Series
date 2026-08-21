-- Day 09: HAVING

USE CollegeDB;

-- ========================================
-- HAVING
-- ========================================

-- 1. Display departments having more than 1 student
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) > 1;


-- 2. Display departments having at least 2 students
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) >= 2;


-- 3. Display departments whose average age is greater than 18
SELECT department, AVG(age) AS average_age
FROM Students
GROUP BY department
HAVING AVG(age) > 18;


-- 4. Display departments whose maximum age is greater than 18
SELECT department, MAX(age) AS maximum_age
FROM Students
GROUP BY department
HAVING MAX(age) > 18;


-- 5. Display departments whose minimum age is 18
SELECT department, MIN(age) AS minimum_age
FROM Students
GROUP BY department
HAVING MIN(age) = 18;


-- ========================================
-- WHERE + GROUP BY + HAVING
-- ========================================

-- 6. Consider only students older than 18,
-- then display departments having more than 1 student
SELECT department, COUNT(*) AS total_students
FROM Students
WHERE age > 18
GROUP BY department
HAVING COUNT(*) > 1;


-- 7. Consider students aged 18 or above,
-- then display departments whose average age is greater than 18
SELECT department, AVG(age) AS average_age
FROM Students
WHERE age >= 18
GROUP BY department
HAVING AVG(age) > 18;


-- ========================================
-- HAVING WITH ORDER BY
-- ========================================

-- 8. Display departments having more than 1 student,
-- sorted by student count
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) > 1
ORDER BY total_students DESC;


-- 9. Display departments whose average age is
-- greater than 18, sorted by average age
SELECT department, AVG(age) AS average_age
FROM Students
GROUP BY department
HAVING AVG(age) > 18
ORDER BY average_age DESC;


-- ========================================
-- MULTIPLE CONDITIONS IN HAVING
-- ========================================

-- 10. Display departments having more than 1 student
-- and an average age greater than 18
SELECT
    department,
    COUNT(*) AS total_students,
    AVG(age) AS average_age
FROM Students
GROUP BY department
HAVING COUNT(*) > 1
AND AVG(age) > 18;


-- ========================================
-- PRACTICE QUERIES
-- ========================================

-- 11. Find departments with at least 2 students
SELECT department, COUNT(*) AS student_count
FROM Students
GROUP BY department
HAVING COUNT(*) >= 2;


-- 12. Find departments with maximum age of 19
SELECT department, MAX(age) AS maximum_age
FROM Students
GROUP BY department
HAVING MAX(age) = 19;


-- 13. Find departments whose average age is 18 or more
SELECT department, AVG(age) AS average_age
FROM Students
GROUP BY department
HAVING AVG(age) >= 18;


-- 14. Find departments having more than 1 student,
-- sorted alphabetically
SELECT department, COUNT(*) AS student_count
FROM Students
GROUP BY department
HAVING COUNT(*) > 1
ORDER BY department ASC;
