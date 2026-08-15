# Day 04 — ORDER BY & Sorting

## 🎯 Objective

Learn how to sort SQL query results using the `ORDER BY` clause.

## 📚 Concepts Covered

- `ORDER BY`
- `ASC`
- `DESC`
- Sorting numbers
- Sorting text
- Sorting using multiple columns
- `WHERE` with `ORDER BY`
- Multi-column sorting

## 🔹 ORDER BY

`ORDER BY` is used to sort the rows returned by a query.

### Ascending Order

Ascending order goes from smallest to largest.

```sql
SELECT *
FROM Students
ORDER BY age ASC;
