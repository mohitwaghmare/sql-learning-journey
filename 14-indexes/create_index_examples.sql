-- Create index on student name

CREATE INDEX idx_students_name
ON students(name);

-- Verify indexes

SELECT *
FROM pg_indexes
WHERE tablename = 'students';