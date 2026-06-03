-- Students older than 21

SELECT *
FROM students
WHERE age > 21;

-- Students younger than 22

SELECT *
FROM students
WHERE age < 22;

-- Students age 22 or above

SELECT *
FROM students
WHERE age >= 22;

-- Students age 20 or below

SELECT *
FROM students
WHERE age <= 20;

-- Students not from Nagpur

SELECT *
FROM students
WHERE city != 'Nagpur';