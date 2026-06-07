# Topic 09 - JOINS

## What is a JOIN?

A JOIN combines data from multiple tables.

Relational databases store information in separate tables.

To retrieve related data, SQL uses JOIN.

Think:

Students Table

| student_id | student_name |
| ---------- | ------------ |
| 1          | Mohit        |
| 2          | Rahul        |
| 3          | Priya        |
| 4          | Sneha        |

Courses Table

| course_id | student_id | course_name |
| --------- | ---------- | ----------- |
| 1         | 1          | Java        |
| 2         | 1          | SQL         |
| 3         | 2          | Python      |
| 4         | 5          | React       |

A JOIN helps connect students and courses using student_id.

---

# Why Do We Need JOINS?

Imagine a real application.

Instead of storing everything in one huge table, data is separated into multiple tables.

Examples:

* Students and Courses
* Customers and Orders
* Employees and Departments
* Users and Payments

JOINS allow us to retrieve related information.

---

# INNER JOIN

INNER JOIN returns only matching records from both tables.

Example:

```sql
SELECT
    s.student_name,
    c.course_name
FROM students_join s
INNER JOIN courses c
ON s.student_id = c.student_id;
```

Result:

| student_name | course_name |
| ------------ | ----------- |
| Mohit        | Java        |
| Mohit        | SQL         |
| Rahul        | Python      |

Notice:

* Priya is missing
* Sneha is missing
* React is missing

Why?

Because there is no matching record.

---

# LEFT JOIN

LEFT JOIN returns:

* All rows from the left table
* Matching rows from the right table

Example:

```sql
SELECT
    s.student_name,
    c.course_name
FROM students_join s
LEFT JOIN courses c
ON s.student_id = c.student_id;
```

Result:

| student_name | course_name |
| ------------ | ----------- |
| Mohit        | Java        |
| Mohit        | SQL         |
| Rahul        | Python      |
| Priya        | NULL        |
| Sneha        | NULL        |

Why?

Every student is shown.

If no course exists, SQL returns NULL.

---

# RIGHT JOIN

RIGHT JOIN returns:

* All rows from the right table
* Matching rows from the left table

Example:

```sql
SELECT
    s.student_name,
    c.course_name
FROM students_join s
RIGHT JOIN courses c
ON s.student_id = c.student_id;
```

Result includes:

| student_name | course_name |
| ------------ | ----------- |
| NULL         | React       |

Why?

The course exists.

The student does not.

SQL still displays the course because RIGHT JOIN keeps all rows from the right table.

---

# FULL OUTER JOIN

FULL OUTER JOIN returns:

* All rows from the left table
* All rows from the right table

Matching rows are joined.

Non-matching rows display NULL values.

Example:

```sql
SELECT
    s.student_name,
    c.course_name
FROM students_join s
FULL OUTER JOIN courses c
ON s.student_id = c.student_id;
```

This gives the most complete result set.

---

# Understanding NULL in JOINS

NULL means:

No matching value exists.

Example:

| student_name | course_name |
| ------------ | ----------- |
| Priya        | NULL        |

Meaning:

Priya exists.

No matching course exists.

---

# How SQL Processes a JOIN

Example:

```sql
SELECT
    s.student_name,
    c.course_name
FROM students_join s
INNER JOIN courses c
ON s.student_id = c.student_id;
```

Step 1:

Read students table.

Step 2:

Read courses table.

Step 3:

Compare student_id values.

Step 4:

Return matching rows.

---

# Real-World Examples

## E-Commerce

Customers Table

Orders Table

Question:

Which customer placed which order?

Use JOIN.

---

## Human Resources

Employees Table

Departments Table

Question:

Which employee belongs to which department?

Use JOIN.

---

## Banking

Customers Table

Accounts Table

Question:

Which customer owns which account?

Use JOIN.

---

# Types of JOINS Learned

## INNER JOIN

Returns matching rows only.

---

## LEFT JOIN

Returns all rows from the left table.

---

## RIGHT JOIN

Returns all rows from the right table.

---

## FULL OUTER JOIN

Returns all rows from both tables.

---

# What I Practiced

1. Created related tables.
2. Connected tables using student_id.
3. Used INNER JOIN.
4. Used LEFT JOIN.
5. Used RIGHT JOIN.
6. Used FULL OUTER JOIN.
7. Learned how NULL appears in JOIN results.

---

# Key Takeaway

JOINS are one of the most important SQL concepts.

They allow data stored in separate tables to be combined into meaningful results.

Most real-world SQL queries involve JOIN operations.
