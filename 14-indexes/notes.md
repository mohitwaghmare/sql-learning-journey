# Topic 14 - Indexes

## What is an Index?

An Index is a database object that helps SQL find data faster.

Think of an index in a book.

Without an index:

You read every page until you find the topic.

With an index:

You jump directly to the correct page.

Databases work in a similar way.

---

# Why Do We Need Indexes?

Suppose a students table contains:

* 10 rows
* 100 rows
* 1000 rows

Finding data is easy.

Now imagine:

* 1 million rows
* 10 million rows

Searching becomes slower.

Indexes help SQL locate records efficiently.

---

# Without an Index

Example:

```sql id="qyl5qs"
SELECT *
FROM students
WHERE name = 'Mohit';
```

SQL may scan every row.

This is called a Full Table Scan.

---

# With an Index

Example:

```sql id="9p93w0"
CREATE INDEX idx_students_name
ON students(name);
```

Now SQL can quickly locate matching rows.

---

# Creating an Index

Example:

```sql id="ld8vrv"
CREATE INDEX idx_students_name
ON students(name);
```

Meaning:

Create an index named:

idx_students_name

on the name column.

---

# Naming Convention

Common format:

```text id="zdxzkg"
idx_table_column
```

Examples:

```text id="m6z7m8"
idx_students_name
idx_users_email
idx_products_category
```

---

# Viewing Indexes

Example:

```sql id="tqgww2"
SELECT *
FROM pg_indexes
WHERE tablename = 'students';
```

Shows indexes associated with a table.

---

# Dropping an Index

Example:

```sql id="ggsyng"
DROP INDEX idx_students_name;
```

Removes the index.

---

# Real-World Examples

## E-Commerce

```text id="o7ef25"
Search products by name
```

Create an index on product_name.

---

## Banking

```text id="fpr0ia"
Search accounts by account number
```

Create an index on account_number.

---

## Employee Management

```text id="8y8b9m"
Search employees by email
```

Create an index on email.

---

# Advantages of Indexes

1. Faster searches.
2. Faster filtering.
3. Better query performance.
4. Essential for large databases.

---

# Disadvantages of Indexes

1. Use additional storage.
2. Slightly slower INSERT operations.
3. Slightly slower UPDATE operations.
4. Slightly slower DELETE operations.

Why?

Because the index must also be updated.

---

# What I Practiced

1. Created an index.
2. Viewed indexes.
3. Removed an index.
4. Learned how indexes improve performance.

---

# Key Takeaway

Indexes are used to improve query performance.

They work like an index in a book, helping SQL find data quickly without scanning every row.

Indexes become increasingly important as databases grow larger.
