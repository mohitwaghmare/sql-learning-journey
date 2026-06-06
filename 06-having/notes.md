# Topic 06 - HAVING

## What is HAVING?

HAVING is used to filter groups created by GROUP BY.

Think:

WHERE filters rows.

HAVING filters groups.

---

## Why Do We Need HAVING?

Suppose we grouped students by city.

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city;
```

Result:

| city   | count |
| ------ | ----- |
| Nagpur | 3     |
| Pune   | 2     |
| Mumbai | 1     |
| Delhi  | 1     |

Now suppose we only want cities having more than 1 student.

WHERE cannot filter aggregate results.

HAVING is used instead.

---

## Basic Example

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 1;
```

Result:

| city   | count |
| ------ | ----- |
| Nagpur | 3     |
| Pune   | 2     |

Mumbai and Delhi are removed because they contain only 1 student.

---

## WHERE vs HAVING

### WHERE

Filters rows before grouping.

Example:

```sql
SELECT *
FROM students
WHERE city = 'Nagpur';
```

Meaning:

Only Nagpur rows are selected.

---

### HAVING

Filters groups after grouping.

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 1;
```

Meaning:

Create groups first.

Then remove groups whose count is not greater than 1.

---

## How SQL Processes a Query

Example:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 1;
```

Step 1:

Read all rows.

Step 2:

Group rows by city.

Step 3:

Count students inside each group.

Step 4:

Apply HAVING condition.

Step 5:

Display remaining groups.

---

## HAVING with AVG()

Example:

```sql
SELECT city, AVG(age)
FROM students
GROUP BY city
HAVING AVG(age) > 21;
```

Question:

Which cities have an average age greater than 21?

---

## Common Beginner Mistake

Incorrect:

```sql
SELECT city, COUNT(*)
FROM students
HAVING COUNT(*) > 1;
```

Error!

HAVING is usually used together with GROUP BY.

---

Correct:

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 1;
```

---

## Real-World Examples

### E-Commerce

```sql
SELECT category, COUNT(*)
FROM products
GROUP BY category
HAVING COUNT(*) > 10;
```

Question:

Which categories have more than 10 products?

---

### Banking

```sql
SELECT branch, SUM(balance)
FROM accounts
GROUP BY branch
HAVING SUM(balance) > 100000;
```

Question:

Which branches hold more than ₹100000?

---

### Human Resources

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

Question:

Which departments have average salaries above ₹50000?

---

## Commands Learned

### GROUP BY

Creates groups.

### HAVING

Filters groups.

### COUNT() + HAVING

Filters groups based on count.

### AVG() + HAVING

Filters groups based on average values.

---

## What I Practiced

1. Grouped data using GROUP BY.
2. Filtered groups using HAVING.
3. Used COUNT() with HAVING.
4. Used AVG() with HAVING.
5. Learned the difference between WHERE and HAVING.

---

## Key Takeaway

WHERE filters rows.

HAVING filters groups.

Whenever aggregate functions and GROUP BY are involved, HAVING is often used to filter the final grouped result.
