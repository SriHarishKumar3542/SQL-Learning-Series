-- Day 06: LIMIT & OFFSET

USE CollegeDB;

-- ========================================
-- LIMIT
-- ========================================

-- 1. Display only the first 3 students
SELECT *
FROM Students
LIMIT 3;


-- 2. Display the first 2 students
SELECT *
FROM Students
LIMIT 2;


-- 3. Display the 3 oldest students
SELECT *
FROM Students
ORDER BY age DESC
LIMIT 3;


-- 4. Display the 3 youngest students
SELECT *
FROM Students
ORDER BY age ASC
LIMIT 3;


-- 5. Display the first 3 students alphabetically
SELECT *
FROM Students
ORDER BY name ASC
LIMIT 3;


-- ========================================
-- LIMIT WITH WHERE
-- ========================================

-- 6. Display only the first 2 CSE students
SELECT *
FROM Students
WHERE department = 'CSE'
LIMIT 2;


-- 7. Display the first 2 students aged 18
SELECT *
FROM Students
WHERE age = 18
LIMIT 2;


-- ========================================
-- OFFSET
-- ========================================

-- 8. Skip the first 2 students and display the rest
SELECT *
FROM Students
LIMIT 3 OFFSET 2;


-- 9. Skip the first student and display the next 2
SELECT *
FROM Students
LIMIT 2 OFFSET 1;


-- ========================================
-- ORDER BY WITH LIMIT AND OFFSET
-- ========================================

-- 10. Display the 2 oldest students
SELECT *
FROM Students
ORDER BY age DESC
LIMIT 2;


-- 11. Skip the oldest student and display the next 2 oldest
SELECT *
FROM Students
ORDER BY age DESC
LIMIT 2 OFFSET 1;


-- 12. Display the second and third students alphabetically
SELECT *
FROM Students
ORDER BY name ASC
LIMIT 2 OFFSET 1;


-- ========================================
-- PAGINATION
-- ========================================

-- 13. First page: 2 students
SELECT *
FROM Students
ORDER BY student_id
LIMIT 2 OFFSET 0;


-- 14. Second page: next 2 students
SELECT *
FROM Students
ORDER BY student_id
LIMIT 2 OFFSET 2;


-- 15. Third page: next 2 students
SELECT *
FROM Students
ORDER BY student_id
LIMIT 2 OFFSET 4;
