# Aggregate Functions

## What are Aggregate Functions?

Aggregate functions perform calculations on multiple rows and return a single result.

Think of them as functions that summarize data.

Example:

Suppose we have student ages:

22
21
23
20
24
22
19

Instead of checking every row manually, SQL can calculate:

* Total students
* Average age
* Youngest age
* Oldest age
* Sum of all ages

using aggregate functions.

---

## Why Do We Need Aggregate Functions?

Imagine a table with 10,000 students.

Questions like:

* How many students are there?
* What is the average age?
* What is the highest age?
* What is the lowest age?

would be difficult to calculate manually.

Aggregate functions solve these problems instantly.

---

# COUNT()

COUNT() counts rows.

Example:

```sql
SELECT COUNT(*)
FROM students;
```

Meaning:

Count every row in the students table.

Example Result:

7

Meaning:

There are 7 students.

---

# AVG()

AVG() calculates the average value.

Example:

```sql
SELECT AVG(age)
FROM students;
```

Meaning:

Add all ages together and divide by the number of students.

Example Result:

21.57

Meaning:

The average student age is approximately 21.57 years.

---

# MIN()

MIN() returns the smallest value.

Example:

```sql
SELECT MIN(age)
FROM students;
```

Result:

19

Meaning:

The youngest student is 19 years old.

---

# MAX()

MAX() returns the largest value.

Example:

```sql
SELECT MAX(age)
FROM students;
```

Result:

24

Meaning:

The oldest student is 24 years old.

---

# SUM()

SUM() adds all values together.

Example:

```sql
SELECT SUM(age)
FROM students;
```

Result:

151

Meaning:

The total of all student ages is 151.

---

# Real-World Examples

## Online Shopping

```sql
SELECT COUNT(*)
FROM orders;
```

Question:

How many orders exist?

---

## Banking

```sql
SELECT SUM(balance)
FROM accounts;
```

Question:

How much money is stored across all accounts?

---

## Human Resources

```sql
SELECT AVG(salary)
FROM employees;
```

Question:

What is the average employee salary?

---

## School Database

```sql
SELECT MAX(age)
FROM students;
```

Question:

Who is the oldest student?

---

# Commands Learned Today

## COUNT()

Counts rows.

---

## AVG()

Calculates average values.

---

## MIN()

Returns the smallest value.

---

## MAX()

Returns the largest value.

---

## SUM()

Returns the total value.

---

# Actions Performed

1. Counted records using COUNT().
2. Calculated average age using AVG().
3. Found the youngest student using MIN().
4. Found the oldest student using MAX().
5. Calculated total age using SUM().
6. Learned how aggregate functions summarize data.

---

# Key Takeaway

Aggregate functions help answer questions about groups of data without manually checking every row.

They are widely used in:

* Reports
* Dashboards
* Business Analytics
* Backend Applications
* SQL Interviews

Understanding aggregate functions is essential before learning GROUP BY, which is the next major SQL topic.
