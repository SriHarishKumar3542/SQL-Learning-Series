-- Day 05: DISTINCT

USE CollegeDB;

-- ========================================
-- DISTINCT
-- ========================================

-- 1. Display unique departments
SELECT DISTINCT department
FROM Students;


-- 2. Display unique ages
SELECT DISTINCT age
FROM Students;


-- 3. Display unique combinations of department and age
SELECT DISTINCT department, age
FROM Students;


-- 4. Display the unique departments in alphabetical order
SELECT DISTINCT department
FROM Students
ORDER BY department ASC;


-- 5. Display unique ages from highest to lowest
SELECT DISTINCT age
FROM Students
ORDER BY age DESC;


-- ========================================
-- DISTINCT WITH WHERE
-- ========================================

-- 6. Display unique departments of students aged 18
SELECT DISTINCT department
FROM Students
WHERE age = 18;


-- 7. Display unique departments of students aged 19
SELECT DISTINCT department
FROM Students
WHERE age = 19;


-- 8. Display unique ages of CSE students
SELECT DISTINCT age
FROM Students
WHERE department = 'CSE';


-- ========================================
-- DISTINCT WITH ORDER BY
-- ========================================

-- 9. Display unique departments alphabetically
SELECT DISTINCT department
FROM Students
ORDER BY department;


-- 10. Display unique department and age combinations
-- sorted by department
SELECT DISTINCT department, age
FROM Students
ORDER BY department ASC, age ASC;


-- ========================================
-- PRACTICE QUERIES
-- ========================================

-- 11. Find the number of different departments
SELECT COUNT(DISTINCT department)
FROM Students;


-- 12. Find the number of different ages
SELECT COUNT(DISTINCT age)
FROM Students;


-- 13. Display unique departments that are not CSE
SELECT DISTINCT department
FROM Students
WHERE department <> 'CSE'
ORDER BY department ASC;


-- 14. Display unique ages of students from CSE or IT
SELECT DISTINCT age
FROM Students
WHERE department = 'CSE'
OR department = 'IT'
ORDER BY age ASC;
