# Day 05 — DISTINCT

## 🎯 Objective

Learn how to remove duplicate values from SQL query results using the `DISTINCT` keyword.

## 📚 Concepts Covered

- `DISTINCT`
- Removing duplicate values
- DISTINCT with multiple columns
- DISTINCT with `WHERE`
- DISTINCT with `ORDER BY`
- `COUNT(DISTINCT column)`

## 🔹 DISTINCT

`DISTINCT` returns only unique values from a column.

Without `DISTINCT`:

```sql
SELECT department
FROM Students;
