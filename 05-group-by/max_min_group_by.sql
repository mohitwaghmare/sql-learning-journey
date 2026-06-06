-- Highest age in each city

SELECT city, MAX(age)
FROM students
GROUP BY city;

-- Lowest age in each city

SELECT city, MIN(age)
FROM students
GROUP BY city;