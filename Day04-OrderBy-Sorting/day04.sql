-- Day 04: ORDER BY & Sorting

USE CollegeDB;

-- ========================================
-- ORDER BY
-- ========================================

-- 1. Sort students by age in ascending order
SELECT *
FROM Students
ORDER BY age ASC;


-- 2. Sort students by age in descending order
SELECT *
FROM Students
ORDER BY age DESC;


-- 3. Sort students by name alphabetically
SELECT *
FROM Students
ORDER BY name ASC;


-- 4. Sort students by name in reverse alphabetical order
SELECT *
FROM Students
ORDER BY name DESC;


-- ========================================
-- WHERE WITH ORDER BY
-- ========================================

-- 5. Display CSE students from oldest to youngest
SELECT *
FROM Students
WHERE department = 'CSE'
ORDER BY age DESC;


-- 6. Display students aged 18, sorted by name
SELECT *
FROM Students
WHERE age = 18
ORDER BY name ASC;


-- ========================================
-- MULTIPLE COLUMN SORTING
-- ========================================

-- 7. Sort by age first, then by name
SELECT *
FROM Students
ORDER BY age ASC, name ASC;


-- 8. Sort by age descending, then name ascending
SELECT *
FROM Students
ORDER BY age DESC, name ASC;


-- 9. Sort CSE and IT students by age
SELECT *
FROM Students
WHERE department = 'CSE'
OR department = 'IT'
ORDER BY age DESC;


-- ========================================
-- PRACTICE QUERIES
-- ========================================

-- 10. Display students older than 18,
-- sorted from oldest to youngest
SELECT *
FROM Students
WHERE age > 18
ORDER BY age DESC;


-- 11. Display students who are not from CSE,
-- sorted alphabetically by name
SELECT *
FROM Students
WHERE department <> 'CSE'
ORDER BY name ASC;


-- 12. Display all students,
-- sorted by department and then by age
SELECT *
FROM Students
ORDER BY department ASC, age ASC;
