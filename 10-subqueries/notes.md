# Topic 10 - Subqueries

## What is a Subquery?

A Subquery is a query written inside another query.

Think:

Query inside a query.

Example:

```sql
SELECT *
FROM students
WHERE age >
(
    SELECT AVG(age)
    FROM students
);
```

The inner query runs first.

Its result is then used by the outer query.

---

# Why Do We Need Subqueries?

Sometimes we need information that depends on another query.

Questions like:

* Students older than average age
* Employees earning more than average salary
* Products priced above average price

cannot be answered easily with a single query.

Subqueries help solve such problems.

---

# How SQL Executes a Subquery

Example:

```sql
SELECT *
FROM students
WHERE age >
(
    SELECT AVG(age)
    FROM students
);
```

Step 1:

Execute inner query.

```sql
SELECT AVG(age)
FROM students;
```

Result:

21.57

Step 2:

Execute outer query.

```sql
SELECT *
FROM students
WHERE age > 21.57;
```

Step 3:

Display matching rows.

---

# Subquery Example 1

Students from the same city as Mohit.

```sql
SELECT *
FROM students
WHERE city =
(
    SELECT city
    FROM students
    WHERE name = 'Mohit'
);
```

Meaning:

Find Mohit's city.

Then find all students from that city.

---

# Subquery Example 2

Students older than average age.

```sql
SELECT *
FROM students
WHERE age >
(
    SELECT AVG(age)
    FROM students
);
```

Meaning:

Find average age.

Then find students older than that average.

---

# Real-World Examples

## Human Resources

```sql
SELECT *
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);
```

Question:

Which employees earn above average salary?

---

## E-Commerce

```sql
SELECT *
FROM products
WHERE price >
(
    SELECT AVG(price)
    FROM products
);
```

Question:

Which products cost more than average?

---

## Banking

```sql
SELECT *
FROM accounts
WHERE balance >
(
    SELECT AVG(balance)
    FROM accounts
);
```

Question:

Which accounts have above-average balances?

---

# Advantages of Subqueries

* Easy to understand
* Breaks complex logic into smaller parts
* Useful for comparisons and filtering

---

# What I Practiced

1. Created subqueries.
2. Used a query inside another query.
3. Compared values using subqueries.
4. Retrieved records based on calculated values.

---

# Key Takeaway

A Subquery is a query inside another query.

SQL executes the inner query first and then uses its result in the outer query.

Subqueries are commonly used for filtering, comparisons, and business reporting.
