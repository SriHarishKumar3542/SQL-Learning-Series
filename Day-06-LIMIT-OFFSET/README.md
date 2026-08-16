# Day 06 — LIMIT & OFFSET

## 🎯 Objective

Learn how to control the number of rows returned by a SQL query using `LIMIT` and `OFFSET`.

## 📚 Concepts Covered

- `LIMIT`
- `OFFSET`
- LIMIT with `ORDER BY`
- LIMIT with `WHERE`
- LIMIT and OFFSET together
- Basic pagination

## 🔹 LIMIT

`LIMIT` restricts the number of rows returned by a query.

```sql
SELECT *
FROM Students
LIMIT 3;
