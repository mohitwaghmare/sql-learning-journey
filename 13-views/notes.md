# Topic 13 - Views

## What is a View?

A View is a virtual table created from a SQL query.

Think of a View as a saved query.

Instead of writing the same query repeatedly, SQL allows us to save it as a View.

---

# Why Do We Need Views?

Suppose we frequently run:

```sql
SELECT *
FROM students
WHERE city = 'Nagpur';
```

Writing the same query again and again is repetitive.

Instead:

```sql
CREATE VIEW nagpur_students AS
SELECT *
FROM students
WHERE city = 'Nagpur';
```

Now we can simply write:

```sql
SELECT *
FROM nagpur_students;
```

---

# View vs Table

## Table

Stores actual data.

Example:

students

Contains physical rows.

---

## View

Stores a query.

Example:

nagpur_students

Stores the SQL statement, not separate data.

---

# Creating a View

Example:

```sql
CREATE VIEW nagpur_students AS
SELECT *
FROM students
WHERE city = 'Nagpur';
```

Meaning:

Save this query under the name:

nagpur_students

---

# Querying a View

Example:

```sql
SELECT *
FROM nagpur_students;
```

SQL executes the saved query behind the scenes.

---

# CREATE OR REPLACE VIEW

Example:

```sql
CREATE OR REPLACE VIEW nagpur_students AS
SELECT *
FROM students
WHERE city = 'Nagpur';
```

Why use it?

If the view already exists, SQL replaces it instead of throwing an error.

Useful during development and learning.

---

# Real-World Examples

## Banking

Create a view showing premium customers.

```sql
CREATE VIEW premium_customers AS
SELECT *
FROM customers
WHERE balance >= 100000;
```

---

## Human Resources

Create a view showing active employees.

```sql
CREATE VIEW active_employees AS
SELECT *
FROM employees
WHERE status = 'Active';
```

---

## E-Commerce

Create a view showing available products.

```sql
CREATE VIEW available_products AS
SELECT *
FROM products
WHERE stock > 0;
```

---

# Advantages of Views

1. Reuse complex queries.
2. Simplify reporting.
3. Improve readability.
4. Hide unnecessary data.
5. Provide a logical layer over tables.

---

# What I Practiced

1. Created views.
2. Queried views.
3. Reused saved SQL queries.
4. Used CREATE OR REPLACE VIEW.
5. Learned the difference between tables and views.

---

# Key Takeaway

A View is a saved SQL query that behaves like a table.

Views help simplify frequently used queries and are commonly used in reports, dashboards, and backend applications.
