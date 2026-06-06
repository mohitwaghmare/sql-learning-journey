-- Count students in each city

SELECT city, COUNT(*)
FROM students
GROUP BY city;