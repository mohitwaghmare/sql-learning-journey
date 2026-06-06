# GROUP BY

## What is GROUP BY?

GROUP BY is used to group rows that have the same value in a column.

Think of it as creating teams or groups.

Example:

Students Table

| name   | city   |
| ------ | ------ |
| Mohit  | Nagpur |
| Amit   | Nagpur |
| Anjali | Nagpur |
| Rahul  | Pune   |
| Rohit  | Pune   |
| Priya  | Mumbai |
| Sneha  | Delhi  |

If we group by city, SQL creates four groups:

Nagpur:

* Mohit
* Amit
* Anjali

Pune:

* Rahul
* Rohit

Mumbai:

* Priya

Delhi:

* Sneha

---

## Why Do We Need GROUP BY?

Suppose we want answers like:

* How many students are in each city?
* What is the average age in each city?
* What is the oldest student in each city?
* What is the total age of students in each city?

Aggregate functions alone cannot answer these questions for each city separately.

This is where GROUP BY becomes useful.

---

## Aggregate Function Without GROUP BY

Example:

```sql
SELECT COUNT(*)
FROM students;
```

Result:

7

````

Meaning:

There are 7 students in total.

Only one result is returned.

---

## Aggregate Function With GROUP BY

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city;
````

Result:

| city   | count |
| ------ | ----- |
| Nagpur | 3     |
| Pune   | 2     |
| Mumbai | 1     |
| Delhi  | 1     |

Meaning:

SQL first groups rows by city and then counts students inside each group.

---

# COUNT() with GROUP BY

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city;
```

Question Answered:

How many students are in each city?

---

# AVG() with GROUP BY

Example:

```sql
SELECT city, AVG(age)
FROM students
GROUP BY city;
```

Question Answered:

What is the average age of students in each city?

---

# SUM() with GROUP BY

Example:

```sql
SELECT city, SUM(age)
FROM students
GROUP BY city;
```

Question Answered:

What is the total age of students in each city?

---

# MAX() with GROUP BY

Example:

```sql
SELECT city, MAX(age)
FROM students
GROUP BY city;
```

Question Answered:

What is the highest age in each city?

---

# MIN() with GROUP BY

Example:

```sql
SELECT city, MIN(age)
FROM students
GROUP BY city;
```

Question Answered:

What is the lowest age in each city?

---

# How SQL Processes GROUP BY

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city;
```

Step 1:

Read all rows.

Step 2:

Create groups based on city.

Step 3:

Count rows inside each group.

Step 4:

Display the result.

---

# Common Beginner Mistake

Incorrect:

```sql
SELECT city, age
FROM students
GROUP BY city;
```

Why is this wrong?

A city can have multiple ages.

SQL does not know which age should be displayed.

---

Correct:

```sql
SELECT city, AVG(age)
FROM students
GROUP BY city;
```

Now SQL knows how to calculate a single value for each group.

---

# Real-World Examples

## E-Commerce

```sql
SELECT category, COUNT(*)
FROM products
GROUP BY category;
```

Question:

How many products are available in each category?

---

## Banking

```sql
SELECT branch, SUM(balance)
FROM accounts
GROUP BY branch;
```

Question:

How much money is stored in each branch?

---

## Human Resources

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
```

Question:

What is the average salary in each department?

---

# Commands Learned Today

## GROUP BY

Groups rows with the same value.

---

## COUNT() + GROUP BY

Counts rows in each group.

---

## AVG() + GROUP BY

Calculates average values in each group.

---

## SUM() + GROUP BY

Calculates totals in each group.

---

## MAX() + GROUP BY

Finds the largest value in each group.

---

## MIN() + GROUP BY

Finds the smallest value in each group.

---

# Actions Performed

1. Grouped students by city.
2. Counted students in each city.
3. Calculated average age by city.
4. Calculated total age by city.
5. Found highest age by city.
6. Found lowest age by city.
7. Learned how aggregate functions work with GROUP BY.

---

# Key Takeaway

Aggregate functions summarize data.

GROUP BY allows aggregate functions to summarize data separately for each group.

This is one of the most important SQL concepts and is frequently used in:

* Reports
* Dashboards
* Analytics
* Backend Applications
* SQL Interviews

Understanding GROUP BY is essential before learning HAVING, which is the next topic.
