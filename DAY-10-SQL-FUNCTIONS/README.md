# 📅 Day 10 — SQL String & Numeric Functions

## 📖 Topics Covered

### 🔤 String Functions

- `UPPER()` — Converts text to uppercase
- `LOWER()` — Converts text to lowercase
- `LENGTH()` — Returns the length of a string
- `CONCAT()` — Combines strings
- `TRIM()` — Removes extra spaces
- `SUBSTRING()` — Extracts part of a string

### 🔢 Numeric Functions

- `ABS()` — Absolute value
- `ROUND()` — Rounds a number
- `CEIL()` — Rounds upward
- `FLOOR()` — Rounds downward
- `POWER()` — Calculates powers
- `SQRT()` — Calculates square root
- `MOD()` — Returns remainder

---

## 💻 SQL Queries

```sql
SELECT UPPER('sri harish kumar');

SELECT LOWER('SQL LEARNING SERIES');

SELECT LENGTH('SQL');

SELECT CONCAT('Sri ', 'Harish ', 'Kumar');

SELECT ROUND(45.6789, 2);

SELECT CEIL(45.23);

SELECT FLOOR(45.89);

SELECT POWER(2, 3);

SELECT SQRT(64);

SELECT MOD(17, 5);
