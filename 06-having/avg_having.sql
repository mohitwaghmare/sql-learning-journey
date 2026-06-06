-- Cities whose average age is greater than 21

SELECT city, AVG(age)
FROM students
GROUP BY city
HAVING AVG(age) > 21;

-- Cities whose average age is less than or equal to 21

SELECT city, AVG(age)
FROM students
GROUP BY city
HAVING AVG(age) <= 21;