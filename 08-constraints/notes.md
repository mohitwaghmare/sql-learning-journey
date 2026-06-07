# Topic 08 - Constraints

## What are Constraints?

Constraints are rules applied to a table.

They help maintain data accuracy and prevent invalid data from being stored.

Think of constraints as security guards for your database.

Without constraints, users can insert incorrect or duplicate data.

With constraints, the database automatically enforces rules.

---

# Why Do We Need Constraints?

Imagine a student management system.

Problems that can occur:

* Duplicate student IDs
* Empty student names
* Invalid ages
* Courses assigned to non-existent students

Constraints prevent these issues.

---

# PRIMARY KEY

A Primary Key uniquely identifies each row in a table.

Example:

```sql
CREATE TABLE students_pk (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100)
);
```

Result:

| student_id | student_name |
| ---------- | ------------ |
| 1          | Mohit        |
| 2          | Rahul        |
| 3          | Priya        |

---

## Rules of a Primary Key

A Primary Key:

* Must be unique
* Cannot be NULL
* Identifies a row uniquely

Think:

Student ID, Employee ID, Order ID

---

# FOREIGN KEY

A Foreign Key creates a relationship between tables.

Example:

Students Table

| student_id | student_name |
| ---------- | ------------ |
| 1          | Mohit        |
| 2          | Rahul        |

Courses Table

| course_id | student_id | course_name |
| --------- | ---------- | ----------- |
| 1         | 1          | Java        |

The student_id in courses references the student_id in students.

---

## Why is Foreign Key Important?

Suppose we try:

```sql
INSERT INTO courses_fk (student_id, course_name)
VALUES (999, 'Python');
```

Result:

Error.

Why?

Because student 999 does not exist.

The database protects data integrity.

---

# UNIQUE

UNIQUE prevents duplicate values.

Example:

```sql
CREATE TABLE users_unique (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);
```

Valid:

```text
mohit@gmail.com
rahul@gmail.com
```

Invalid:

```text
mohit@gmail.com
mohit@gmail.com
```

The second insert will fail.

---

# NOT NULL

NOT NULL prevents empty values.

Example:

```sql
CREATE TABLE users_not_null (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL
);
```

Invalid:

```sql
INSERT INTO users_not_null(username)
VALUES(NULL);
```

The database rejects it.

---

# DEFAULT

DEFAULT provides a value when none is supplied.

Example:

```sql
CREATE TABLE users_default (
    user_id SERIAL PRIMARY KEY,
    country VARCHAR(50) DEFAULT 'India'
);
```

Insert:

```sql
INSERT INTO users_default DEFAULT VALUES;
```

Result:

```text
India
```

The default value is automatically used.

---

# CHECK

CHECK validates data using a condition.

Example:

```sql
CREATE TABLE users_check (
    user_id SERIAL PRIMARY KEY,
    age INT CHECK (age >= 18)
);
```

Valid:

```text
18
20
25
```

Invalid:

```text
15
16
17
```

The database rejects invalid values.

---

# Real-World Examples

## Banking

```text
Account Number → PRIMARY KEY
```

Every account must be unique.

---

## E-Commerce

```text
Email → UNIQUE
```

Two customers cannot use the same email.

---

## Student Management

```text
Course → FOREIGN KEY
```

A course must belong to a valid student.

---

## HR Systems

```text
Employee Name → NOT NULL
```

An employee must have a name.

---

# Constraints Learned

## PRIMARY KEY

Uniquely identifies a row.

---

## FOREIGN KEY

Creates relationships between tables.

---

## UNIQUE

Prevents duplicate values.

---

## NOT NULL

Prevents empty values.

---

## DEFAULT

Provides automatic values.

---

## CHECK

Validates data based on a condition.

---

# What I Practiced

1. Created a Primary Key.
2. Created a Foreign Key.
3. Prevented duplicate values using UNIQUE.
4. Prevented NULL values using NOT NULL.
5. Used DEFAULT values.
6. Validated data using CHECK.
7. Learned how databases enforce data integrity.

---

# Key Takeaway

Constraints protect the database from invalid data.

They ensure:

* Uniqueness
* Accuracy
* Consistency
* Relationships between tables

Understanding constraints is essential before learning JOINS because relational databases depend heavily on Primary Keys and Foreign Keys.
