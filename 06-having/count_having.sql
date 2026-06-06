-- Cities having more than 1 student

SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 1;

-- Cities having exactly 1 student

SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) = 1;