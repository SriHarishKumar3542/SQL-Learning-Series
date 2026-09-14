# 📅 Day 11 — Database Relationships & Foreign Keys

## 📖 Topics Covered

- Database Relationships
- Primary Key
- Foreign Key
- One-to-One Relationship
- One-to-Many Relationship
- Many-to-Many Relationship
- Referential Integrity
- Foreign Key Constraints

---

## 🔗 What is a Database Relationship?

A database relationship defines how data in one table is connected to data in another table.

For example:

```text
Departments
     │
     │ department_id
     ↓
Students
```

One department can have many students.

This is called a **One-to-Many relationship**.

---

## 🔑 Primary Key

A **Primary Key** uniquely identifies each record in a table.

Example:

```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
```

Here:

```text
department_id → PRIMARY KEY
```

A Primary Key:

- Must be unique
- Cannot contain NULL values
- Identifies each record in a table

---

## 🔗 Foreign Key

A **Foreign Key** is a column that creates a relationship between two tables.

Example:

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
```

Here:

```text
students.department_id
        ↓
departments.department_id
```

The `department_id` in the `students` table is a **Foreign Key** that references the `department_id` Primary Key in the `departments` table.

---

## 🛡️ Referential Integrity

Referential integrity ensures that a Foreign Key value refers to an existing record in the referenced table.

For example, if the `departments` table contains:

```text
department_id
--------------
1
2
3
4
```

This is valid:

```sql
INSERT INTO students
VALUES (101, 'Harish', 1);
```

But this is invalid:

```sql
INSERT INTO students
VALUES (102, 'Rahul', 10);
```

because `department_id = 10` does not exist in the `departments` table.

The Foreign Key prevents this invalid relationship.

---

# 🔄 Types of Database Relationships

## 1️⃣ One-to-One

One record in Table A is related to one record in Table B.

Example:

```text
Person → Passport
```

One person has one passport.

---

## 2️⃣ One-to-Many

One record in Table A can be related to many records in Table B.

Example:

```text
Department → Students
```

One department can have many students.

This is one of the most common relationships in relational databases.

---

## 3️⃣ Many-to-Many

Many records in Table A can be related to many records in Table B.

Example:

```text
Students ↔ Courses
```

One student can take many courses, and one course can have many students.

A **junction table** is normally used to implement a many-to-many relationship.

Example:

```text
Students
   │
   ↓
Student_Courses
   ↑
   │
Courses
```

---

# 💻 Example

### Departments Table

```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
```

### Students Table

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
```

### Insert Departments

```sql
INSERT INTO departments
VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical'),
(4, 'Civil');
```

### Insert Students

```sql
INSERT INTO students
VALUES
(101, 'Harish', 1),
(102, 'Arun', 1),
(103, 'Priya', 2),
(104, 'Kavin', 3),
(105, 'Divya', 4);
```

---

# 🧠 Practice Problems

1. Create a `courses` table with:
   - `course_id`
   - `course_name`

2. Insert at least 4 courses.

3. Identify the Primary Key in the `departments` table.

4. Identify the Foreign Key in the `students` table.

5. Try inserting a student with an invalid `department_id`.

6. Explain why the invalid record is rejected.

7. Give one real-world example of a One-to-One relationship.

8. Give one real-world example of a One-to-Many relationship.

9. Give one real-world example of a Many-to-Many relationship.

10. Explain why a junction table is required for a Many-to-Many relationship.

---

# 🎯 Mini Challenge

Create the following tables:

### Employees

```text
employee_id
employee_name
department_id
```

### Departments

```text
department_id
department_name
```

Requirements:

- `employee_id` must be the Primary Key.
- `department_id` must be the Primary Key in `departments`.
- `department_id` in `employees` must be a Foreign Key.
- Insert at least 4 departments.
- Insert at least 6 employees.
- Try inserting an employee with an invalid department ID.

---

# 📝 Key Takeaways

- A **Primary Key** uniquely identifies a record.
- A **Foreign Key** connects two tables.
- Foreign Keys help maintain **referential integrity**.
- One-to-Many relationships are very common in relational databases.
- Many-to-Many relationships generally require a **junction table**.
- Relationships allow data to be organized across multiple tables instead of storing everything in one table.

---

## 📂 Files

- `day11.sql` — SQL queries and practice
- `README.md` — Concepts, examples, and challenges

---

## ✅ Status

**Day 11 — Completed**
