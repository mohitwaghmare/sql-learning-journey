# ALTER TABLE, UPDATE, Comparison Operators, and Logical Operators

## Why Did We Add an Age Column?

Initially, our students table had:

* id
* name
* city

Later, we realized we also wanted to store student ages.

Instead of deleting and recreating the table, SQL allows us to modify an existing table.

This is done using ALTER TABLE.

---

## What is ALTER TABLE?

ALTER TABLE is used to modify the structure of an existing table.

Example:

```sql
ALTER TABLE students
ADD COLUMN age INT;
```

What happens?

1. SQL finds the students table.
2. A new column named age is added.
3. Existing data remains unchanged.

Think:

* CREATE TABLE = Build a new house
* ALTER TABLE = Renovate an existing house

---

## What is UPDATE?

UPDATE is used to modify existing data.

Example:

```sql
UPDATE students
SET age = 22
WHERE name = 'Mohit';
```

How SQL reads this:

1. Find the row where name is Mohit.
2. Change the value of age to 22.

Result:

Before:

| name  | age  |
| ----- | ---- |
| Mohit | NULL |

After:

| name  | age |
| ----- | --- |
| Mohit | 22  |

---

## Why is WHERE Important in UPDATE?

Consider:

```sql
UPDATE students
SET age = 22;
```

Without WHERE, SQL updates EVERY row.

This would make every student age 22.

Always be careful when using UPDATE.

---

# Comparison Operators

Comparison operators help us compare values.

---

## Greater Than (>)

Example:

```sql
SELECT *
FROM students
WHERE age > 21;
```

Meaning:

Show students older than 21.

---

## Less Than (<)

Example:

```sql
SELECT *
FROM students
WHERE age < 22;
```

Meaning:

Show students younger than 22.

---

## Greater Than or Equal To (>=)

Example:

```sql
SELECT *
FROM students
WHERE age >= 22;
```

Meaning:

Show students aged 22 or older.

---

## Less Than or Equal To (<=)

Example:

```sql
SELECT *
FROM students
WHERE age <= 20;
```

Meaning:

Show students aged 20 or younger.

---

## Not Equal To (!=)

Example:

```sql
SELECT *
FROM students
WHERE city != 'Nagpur';
```

Meaning:

Show students who are NOT from Nagpur.

---

# Logical Operators

Logical operators combine multiple conditions.

---

## AND

Both conditions must be true.

Example:

```sql
SELECT *
FROM students
WHERE city = 'Nagpur'
AND age > 20;
```

Meaning:

* Student must be from Nagpur
* Student must be older than 20

Both conditions must be satisfied.

---

## OR

At least one condition must be true.

Example:

```sql
SELECT *
FROM students
WHERE city = 'Mumbai'
OR city = 'Delhi';
```

Meaning:

Show students from Mumbai or Delhi.

---

# Real-World Examples

### Online Shopping

```sql
SELECT *
FROM products
WHERE price < 1000
AND category = 'Electronics';
```

Meaning:

Show electronic products cheaper than ₹1000.

---

### Employee Database

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

Meaning:

Show employees earning more than ₹50,000.

---

### College Database

```sql
SELECT *
FROM students
WHERE city = 'Nagpur'
OR city = 'Pune';
```

Meaning:

Show students from either city.

---

# Commands Learned Today

## ALTER TABLE

Used to modify an existing table.

Example:

```sql
ALTER TABLE students
ADD COLUMN age INT;
```

---

## UPDATE

Used to modify existing data.

Example:

```sql
UPDATE students
SET age = 22
WHERE name = 'Mohit';
```

---

## Comparison Operators

* >
* <
* > =
* <=
* !=

Used to compare values.

---

## Logical Operators

* AND
* OR

Used to combine conditions.

---

# Actions Performed

1. Modified a table using ALTER TABLE.
2. Added a new column called age.
3. Updated existing records using UPDATE.
4. Filtered data using comparison operators.
5. Combined conditions using AND and OR.
6. Executed SQL queries directly from VS Code.

---

# Key Takeaway

SQL is not only used to create tables and insert data.

It is also used to:

* Modify table structures
* Update existing data
* Filter records
* Combine conditions
* Retrieve exactly the data we need

These concepts are heavily used in real-world applications and backend development.
