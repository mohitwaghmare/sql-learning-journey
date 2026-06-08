# Topic 12 - CASE

## What is CASE?

CASE allows SQL to make decisions.

Think of CASE as SQL's version of:

* if
* else if
* else

It lets us create custom values based on conditions.

---

# Why Do We Need CASE?

Suppose we have student ages.

| name  | age |
| ----- | --- |
| Mohit | 22  |
| Rahul | 21  |
| Priya | 23  |

We may want:

| name  | category |
| ----- | -------- |
| Mohit | Senior   |
| Rahul | Junior   |
| Priya | Senior   |

The category does not exist in the table.

CASE can create it dynamically.

---

# Basic CASE Example

```sql
SELECT
    name,
    age,
    CASE
        WHEN age >= 22 THEN 'Senior'
        ELSE 'Junior'
    END AS category
FROM students;
```

Meaning:

If age is 22 or greater:

Return Senior

Otherwise:

Return Junior

---

# Multiple Conditions

Example:

```sql
SELECT
    name,
    age,
    CASE
        WHEN age >= 24 THEN 'Grade A'
        WHEN age >= 22 THEN 'Grade B'
        WHEN age >= 20 THEN 'Grade C'
        ELSE 'Grade D'
    END AS grade
FROM students;
```

SQL checks conditions from top to bottom.

The first matching condition is used.

---

# Understanding END

CASE must always end with:

```sql
END
```

Example:

```sql
CASE
    WHEN age >= 22 THEN 'Senior'
    ELSE 'Junior'
END
```

END closes the CASE block.

---

# AS Keyword

Example:

```sql
END AS category
```

Creates a new column name.

Result:

| category |
| -------- |
| Senior   |
| Junior   |

---

# Real-World Examples

## Banking

```sql
CASE
    WHEN balance >= 100000 THEN 'Premium'
    ELSE 'Regular'
END
```

Classify customers.

---

## Human Resources

```sql
CASE
    WHEN salary >= 50000 THEN 'High Salary'
    ELSE 'Normal Salary'
END
```

Classify employees.

---

## E-Commerce

```sql
CASE
    WHEN price >= 10000 THEN 'Expensive'
    ELSE 'Affordable'
END
```

Classify products.

---

# What I Practiced

1. Used CASE statements.
2. Created custom output columns.
3. Applied multiple conditions.
4. Used ELSE for default values.
5. Learned how SQL performs conditional logic.

---

# Key Takeaway

CASE allows SQL to make decisions and create custom output values.

It is commonly used in:

* Reports
* Dashboards
* Analytics
* Business Logic
* Interviews

CASE is SQL's equivalent of if-else statements in programming languages.
