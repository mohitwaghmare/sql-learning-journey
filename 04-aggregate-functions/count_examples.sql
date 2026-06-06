-- Count all students

SELECT COUNT(*)
FROM students;

-- Count students from Nagpur

SELECT COUNT(*)
FROM students
WHERE city = 'Nagpur';