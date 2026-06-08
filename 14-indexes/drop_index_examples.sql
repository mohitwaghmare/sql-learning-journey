-- Remove index

DROP INDEX IF EXISTS idx_students_name;

-- Verify

SELECT *
FROM pg_indexes
WHERE tablename = 'students';