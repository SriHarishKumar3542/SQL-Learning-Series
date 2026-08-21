# Day 09 — HAVING

## 🎯 Objective

Learn how to filter grouped results using the `HAVING` clause.

## 📚 Concepts Covered

- `HAVING`
- `HAVING` with `COUNT()`
- `HAVING` with `AVG()`
- `HAVING` with `MIN()`
- `HAVING` with `MAX()`
- `WHERE` with `GROUP BY` and `HAVING`
- `HAVING` with multiple conditions
- `HAVING` with `ORDER BY`

## 🔹 HAVING

`HAVING` is used to filter groups created by `GROUP BY`.

Example:

```sql
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) > 1;
