# Topic 15 - Transactions

## What is a Transaction?

A Transaction is a group of SQL statements executed as a single unit.

Think:

All operations succeed together.

Or

All operations fail together.

There is no partial completion.

---

# Why Do We Need Transactions?

Imagine a banking system.

Account A:

₹10,000

Account B:

₹5,000

Transfer:

₹1,000

Steps:

1. Deduct ₹1,000 from Account A
2. Add ₹1,000 to Account B

If Step 1 succeeds but Step 2 fails:

Money disappears.

Transactions prevent this problem.

---

# BEGIN

A transaction starts with:

```sql id="y8k3jc"
BEGIN;
```

Everything after BEGIN becomes part of the transaction.

---

# COMMIT

COMMIT permanently saves changes.

Example:

```sql id="y4h6qd"
BEGIN;

UPDATE students
SET age = 26
WHERE name = 'Rahul';

COMMIT;
```

Result:

Changes become permanent.

---

# ROLLBACK

ROLLBACK cancels changes made during the transaction.

Example:

```sql id="sh0xak"
BEGIN;

UPDATE students
SET age = 99
WHERE name = 'Priya';

ROLLBACK;
```

Result:

Age remains unchanged.

---

# How Transactions Work

Example:

```sql id="vg6k2z"
BEGIN;

UPDATE students
SET age = 30
WHERE name = 'Mohit';

ROLLBACK;
```

Result:

Age remains the same.

Why?

Because changes were never committed.

---

# Banking Example

Transfer Money

```sql id="sjjv3y"
BEGIN;

-- Deduct money

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 1;

-- Add money

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 2;

COMMIT;
```

If something goes wrong:

```sql id="5n7f7j"
ROLLBACK;
```

Everything returns to the previous state.

---

# Real-World Uses

## Banking

Money transfers.

---

## E-Commerce

Order placement.

Payment processing.

Inventory updates.

---

## Human Resources

Employee updates.

Salary processing.

---

# Commands Learned

## BEGIN

Starts a transaction.

---

## COMMIT

Saves changes permanently.

---

## ROLLBACK

Cancels changes.

---

# What I Practiced

1. Started transactions.
2. Updated data inside a transaction.
3. Saved changes using COMMIT.
4. Reverted changes using ROLLBACK.
5. Learned why transactions are important.

---

# Key Takeaway

Transactions ensure data consistency.

They follow an important rule:

Either all changes succeed.

Or none of them succeed.

This principle is essential in real-world applications involving money, orders, inventory, and critical business data.
