# Topic 11 - Advanced Filtering

## Why Do We Need Advanced Filtering?

The WHERE clause allows us to filter rows.

However, writing multiple conditions can become lengthy.

SQL provides additional operators that make filtering easier and more readable.

Today we learn:

* IN
* BETWEEN
* LIKE

---

# IN

IN is used when we want to compare a value against multiple possible values.

Example:

```sql
SELECT *
FROM students
WHERE city IN ('Nagpur', 'Pune');
```

Meaning:

Return students whose city is either Nagpur or Pune.

---

## Without IN

The same query would be:

```sql
SELECT *
FROM students
WHERE city = 'Nagpur'
OR city = 'Pune';
```

IN makes the query cleaner.

---

# BETWEEN

BETWEEN checks whether a value falls within a range.

Example:

```sql
SELECT *
FROM students
WHERE age BETWEEN 20 AND 23;
```

Meaning:

Return students whose age is:

20, 21, 22, or 23

---

## Important

BETWEEN includes both boundary values.

Example:

```text
20 and 23 are included.
```

---

# LIKE

LIKE is used for pattern matching.

It helps search text values.

---

## Starts With

```sql
SELECT *
FROM students
WHERE name LIKE 'M%';
```

Meaning:

Names starting with M.

Examples:

* Mohit
* Manish
* Meera

---

## Ends With

```sql
SELECT *
FROM students
WHERE name LIKE '%t';
```

Meaning:

Names ending with t.

Example:

* Mohit

---

## Contains

```sql
SELECT *
FROM students
WHERE name LIKE '%h%';
```

Meaning:

Names containing h anywhere.

Examples:

* Mohit
* Rahul

---

# Wildcards

## %

Represents zero or more characters.

Examples:

```text
M%
%t
%h%
```

---

# Real-World Examples

## E-Commerce

```sql
SELECT *
FROM products
WHERE category IN ('Electronics', 'Books');
```

Question:

Show products from selected categories.

---

## Banking

```sql
SELECT *
FROM accounts
WHERE balance BETWEEN 10000 AND 50000;
```

Question:

Show accounts within a balance range.

---

## Employee Search

```sql
SELECT *
FROM employees
WHERE name LIKE 'A%';
```

Question:

Find employees whose names start with A.

---

# What I Practiced

1. Used IN for multiple values.
2. Used BETWEEN for ranges.
3. Used LIKE for pattern matching.
4. Learned wildcard usage.
5. Improved filtering techniques.

---

# Key Takeaway

IN simplifies multiple OR conditions.

BETWEEN simplifies range conditions.

LIKE helps search text patterns.

These operators make filtering cleaner, easier to read, and more powerful.
