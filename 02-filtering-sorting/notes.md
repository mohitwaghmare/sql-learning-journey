# Filtering and Sorting Data

## Why Do We Need Filtering?

Imagine a table contains 10,000 students.

If you run:

SELECT * FROM students;

you will get all 10,000 rows.

Most of the time, we only need specific records.

Example:

* Students from Nagpur
* Students from Pune
* Students whose age is greater than 20

This is where WHERE helps.

---

## What is WHERE?

WHERE filters rows based on a condition.

Think:

"Show me only the records that satisfy a condition."

Example:

SELECT *
FROM students
WHERE city = 'Nagpur';

Only students from Nagpur will be displayed.

---

## How Does SQL Read This Query?

SELECT *
FROM students
WHERE city = 'Nagpur';

Step 1:
Look at the students table.

Step 2:
Check every row.

Step 3:
Keep rows where city is Nagpur.

Step 4:
Display the matching rows.

---

## What is ORDER BY?

ORDER BY is used to sort data.

Without ORDER BY:

Data may appear in the order it was inserted.

With ORDER BY:

You can sort data alphabetically or numerically.

Example:

SELECT *
FROM students
ORDER BY name;

This sorts names from A to Z.

---

## What is DESC?

DESC means Descending.

Example:

SELECT *
FROM students
ORDER BY name DESC;

Result:

Z to A

instead of

A to Z

---

## What is LIMIT?

LIMIT restricts how many rows are returned.

Example:

SELECT *
FROM students
LIMIT 3;

Only the first 3 rows are displayed.

Why is this useful?

Imagine a table has 1 million rows.

You may only want to inspect the first few rows.

LIMIT helps with that.

---

## What is DISTINCT?

DISTINCT removes duplicate values.

Example data:

Nagpur
Pune
Nagpur
Mumbai
Pune

Query:

SELECT DISTINCT city
FROM students;

Result:

Nagpur
Pune
Mumbai

Only unique values remain.

---

## Commands Learned Today

### WHERE

Filters rows.

Example:

SELECT *
FROM students
WHERE city = 'Nagpur';

---

### ORDER BY

Sorts rows.

Example:

SELECT *
FROM students
ORDER BY name;

---

### ORDER BY DESC

Sorts rows in reverse order.

Example:

SELECT *
FROM students
ORDER BY name DESC;

---

### LIMIT

Restricts returned rows.

Example:

SELECT *
FROM students
LIMIT 3;

---

### DISTINCT

Removes duplicate values.

Example:

SELECT DISTINCT city
FROM students;

---

## Real-World Example

Imagine an e-commerce website.

You might need:

* Products under ₹1000
* Products sorted by price
* Top 10 products
* Unique product categories

These use:

WHERE
ORDER BY
LIMIT
DISTINCT

every day.

---

## Performed Actions

1. Filtered records using WHERE
2. Sorted records using ORDER BY
3. Limited results using LIMIT
4. Retrieved unique values using DISTINCT

These are among the most commonly used SQL commands in real projects.
