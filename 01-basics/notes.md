# SQL Basics

## What is SQL?

SQL stands for Structured Query Language.

It is used to:

- Create databases
- Create tables
- Store data
- Retrieve data
- Update data
- Delete data

Think of SQL as the language used to communicate with a database.

---

## What is a Database?

A database is an organized collection of data.

Example:

School Database

- Students
- Teachers
- Courses

All information is stored in one place.

---

## What is a Table?

A table stores related data.

Example: students table

| id | name | city |
|----|------|------|
| 1 | Mohit | Nagpur |
| 2 | Rahul | Pune |

A table consists of rows and columns.

---

## What is a Row?

A row represents one record.

Example:

| 1 | Mohit | Nagpur |

This entire line is one row.

---

## What is a Column?

A column represents one property.

Example:

- id
- name
- city

These are columns.

---

## What is a Primary Key?

A Primary Key uniquely identifies each row.

Example:

id = 1
id = 2
id = 3

No two rows can have the same primary key.

---

## What is SERIAL?

SERIAL automatically generates numbers.

Example:

1
2
3
4

You don't have to type them manually.

---

## Commands Learned

### CREATE TABLE

Used to create a new table.

Example:

CREATE TABLE students (...);

---

### INSERT INTO

Used to add records.

Example:

INSERT INTO students (...);

---

### SELECT

Used to retrieve data.

Example:

SELECT * FROM students;

The * means "all columns".

---

## Actions Performed

1. Created database sql_learning
2. Created students table
3. Inserted sample records
4. Retrieved records using SELECT
