-- Day 02: WHERE & Filtering

USE CollegeDB;

-- Display students from CSE
SELECT *
FROM Students
WHERE department = 'CSE';

-- Display students whose age is 19
SELECT *
FROM Students
WHERE age = 19;

-- Display students older than 18
SELECT *
FROM Students
WHERE age > 18;

-- Display students younger than 19
SELECT *
FROM Students
WHERE age < 19;

-- Display students whose age is 19 or above
SELECT *
FROM Students
WHERE age >= 19;

-- Display students whose age is not 19
SELECT *
FROM Students
WHERE age <> 19;
