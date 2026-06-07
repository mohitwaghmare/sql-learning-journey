# Topic 07 - DELETE, TRUNCATE and DROP

## Why Do We Need These Commands?

Sometimes data is no longer needed.

Examples:

* A student record is incorrect.
* Temporary data should be cleared.
* A table is no longer required.

SQL provides three commands:

DELETE

TRUNCATE

DROP

Although they seem similar, they behave very differently.

---

# DELETE

DELETE removes selected rows from a table.

Example:

```sql
DELETE FROM students
WHERE name = 'Rahul';
```

Meaning:

Find Rahul's row and remove it.

The table still exists.

Other rows remain unchanged.

---

## DELETE Without WHERE

Example:

```sql
DELETE FROM students;
```

Meaning:

Delete all rows.

The table still exists.

Structure remains intact.

---

# TRUNCATE

TRUNCATE removes all rows from a table.

Example:

```sql
TRUNCATE TABLE students;
```

Meaning:

Remove all data quickly.

The table still exists.

Column definitions remain unchanged.

---

## Important Difference

DELETE removes rows one by one.

TRUNCATE clears the table instantly.

For large tables, TRUNCATE is much faster.

---

# DROP

DROP removes the entire table.

Example:

```sql
DROP TABLE students;
```

Meaning:

Remove:

* Table structure
* Columns
* Constraints
* Data

Everything is deleted.

---

# Visual Comparison

Before:

students

| id | name  |
| -- | ----- |
| 1  | Mohit |
| 2  | Rahul |

---

After DELETE Rahul:

| id | name  |
| -- | ----- |
| 1  | Mohit |

Table remains.

---

After TRUNCATE:

| id | name |
| -- | ---- |

No rows.

Table remains.

---

After DROP:

Table no longer exists.

---

# Real-World Examples

## DELETE

Remove one employee.

```sql
DELETE FROM employees
WHERE employee_id = 10;
```

---

## TRUNCATE

Clear temporary log data.

```sql
TRUNCATE TABLE logs;
```

---

## DROP

Remove an unused table.

```sql
DROP TABLE old_backup;
```

---

# Commands Learned

## DELETE

Removes selected rows.

---

## TRUNCATE

Removes all rows.

---

## DROP

Removes the entire table.

---

# What I Practiced

1. Deleted specific rows.
2. Removed all rows using TRUNCATE.
3. Removed an entire table using DROP.
4. Learned the difference between the three commands.

---

# Key Takeaway

DELETE = Remove rows.

TRUNCATE = Remove all rows.

DROP = Remove the entire table.

This is one of the most commonly asked SQL interview concepts.
