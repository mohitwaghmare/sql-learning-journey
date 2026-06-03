-- Students from Nagpur older than 20

SELECT *
FROM students
WHERE city = 'Nagpur'
AND age > 20;

-- Students from Nagpur or Pune

SELECT *
FROM students
WHERE city = 'Nagpur'
OR city = 'Pune';