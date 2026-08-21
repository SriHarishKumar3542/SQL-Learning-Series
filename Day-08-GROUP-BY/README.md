# Day 08 — GROUP BY

## 🎯 Objective

Learn how to group rows with the same values and perform aggregate calculations for each group.

## 📚 Concepts Covered

- `GROUP BY`
- `GROUP BY` with `COUNT()`
- `GROUP BY` with `SUM()`
- `GROUP BY` with `AVG()`
- `GROUP BY` with `MIN()`
- `GROUP BY` with `MAX()`
- `GROUP BY` with `WHERE`
- `GROUP BY` with `ORDER BY`
- Column aliases using `AS`

## 🔹 GROUP BY

`GROUP BY` combines rows that have the same value in a column.

For example:

```sql
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department;
