-- Average age by city

SELECT city, AVG(age)
FROM students
GROUP BY city;