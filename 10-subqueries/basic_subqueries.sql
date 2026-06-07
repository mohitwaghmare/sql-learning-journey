-- Students from Nagpur

SELECT *
FROM students
WHERE city =
(
    SELECT city
    FROM students
    WHERE name = 'Mohit'
);