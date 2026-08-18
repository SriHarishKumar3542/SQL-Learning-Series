# Day 07 — Aggregate Functions

## 🎯 Objective

Learn how to perform calculations on multiple rows using SQL aggregate functions.

## 📚 Concepts Covered

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `COUNT(DISTINCT)`
- Aggregate functions with `WHERE`
- Using multiple aggregate functions together
- Column aliases using `AS`

## 🔹 COUNT()

`COUNT()` counts rows or non-NULL values in a column.

### Count all rows

```sql
SELECT COUNT(*)
FROM Students;
