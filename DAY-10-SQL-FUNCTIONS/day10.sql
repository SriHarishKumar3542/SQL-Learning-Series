-- ============================================
-- SQL LEARNING SERIES
-- DAY 10 - STRING & NUMERIC FUNCTIONS
-- ============================================


-- ============================================
-- STRING FUNCTIONS
-- ============================================

-- UPPER()
SELECT UPPER('sri harish kumar') AS uppercase_name;

-- LOWER()
SELECT LOWER('SQL LEARNING SERIES') AS lowercase_text;

-- LENGTH()
SELECT LENGTH('SQL') AS text_length;

-- CONCAT()
SELECT CONCAT('Sri ', 'Harish ', 'Kumar') AS full_name;

-- TRIM()
SELECT TRIM('   SQL Learning   ') AS trimmed_text;

-- SUBSTRING()
SELECT SUBSTRING('DATABASE', 1, 4) AS extracted_text;

-- LEFT()
SELECT LEFT('DATABASE', 4) AS left_text;

-- RIGHT()
SELECT RIGHT('DATABASE', 4) AS right_text;

-- REPLACE()
SELECT REPLACE('SQL Learning Series', 'SQL', 'DATABASE') AS modified_text;


-- ============================================
-- NUMERIC FUNCTIONS
-- ============================================

-- ABS()
SELECT ABS(-25) AS absolute_value;

-- ROUND()
SELECT ROUND(45.6789, 2) AS rounded_value;

-- CEIL()
SELECT CEIL(45.23) AS ceiling_value;

-- FLOOR()
SELECT FLOOR(45.89) AS floor_value;

-- POWER()
SELECT POWER(2, 3) AS power_value;

-- SQRT()
SELECT SQRT(64) AS square_root;

-- MOD()
SELECT MOD(17, 5) AS remainder;
