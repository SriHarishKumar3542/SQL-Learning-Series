-- Day 03: Comparison & Logical Operators

USE CollegeDB;

-- ================================
-- COMPARISON OPERATORS
-- ================================

-- 1. Equal to (=)
SELECT *
FROM Students
WHERE age = 19;

-- 2. Greater than (>)
SELECT *
FROM Students
WHERE age > 18;

-- 3. Less than (<)
SELECT *
FROM Students
WHERE age < 19;

-- 4. Greater than or equal to (>=)
SELECT *
FROM Students
WHERE age >= 19;

-- 5. Less than or equal to (<=)
SELECT *
FROM Students
WHERE age <= 18;

-- 6. Not equal to (<>)
SELECT *
FROM Students
WHERE department <> 'CSE';


-- ================================
-- LOGICAL OPERATORS
-- ================================

-- 7. AND
SELECT *
FROM Students
WHERE department = 'CSE'
AND age = 19;

-- 8. OR
SELECT *
FROM Students
WHERE department = 'CSE'
OR department = 'IT';

-- 9. NOT
SELECT *
FROM Students
WHERE NOT department = 'CSE';


-- ================================
-- COMBINING CONDITIONS
-- ================================

-- 10. AND with OR
SELECT *
FROM Students
WHERE (department = 'CSE' OR department = 'IT')
AND age = 19;

-- 11. Multiple AND conditions
SELECT *
FROM Students
WHERE department = 'CSE'
AND age = 18;

-- 12. Multiple OR conditions
SELECT *
FROM Students
WHERE department = 'CSE'
OR department = 'IT'
OR department = 'ECE';

-- 13. NOT with comparison
SELECT *
FROM Students
WHERE NOT age = 19;

-- 14. NOT equal with AND
SELECT *
FROM Students
WHERE department <> 'CSE'
AND age = 18;
