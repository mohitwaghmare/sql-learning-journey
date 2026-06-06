-- Total age by city

SELECT city, SUM(age)
FROM students
GROUP BY city;