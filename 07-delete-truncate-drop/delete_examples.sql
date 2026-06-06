-- Delete a specific student

DELETE FROM students
WHERE name = 'Rahul';

-- Verify deletion

SELECT *
FROM students;