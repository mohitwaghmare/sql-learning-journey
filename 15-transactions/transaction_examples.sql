-- Start transaction

BEGIN;

-- Update student age

UPDATE students
SET age = 25
WHERE name = 'Mohit';

-- Check result

SELECT *
FROM students
WHERE name = 'Mohit';