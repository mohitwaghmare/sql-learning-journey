-- Create test table

DROP TABLE IF EXISTS test_students;

CREATE TABLE test_students AS
SELECT * FROM students;

-- Remove table

DROP TABLE test_students;

-- Verify
-- This will throw an error

SELECT *
FROM test_students;