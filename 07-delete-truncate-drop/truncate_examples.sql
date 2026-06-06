-- Create test table

DROP TABLE IF EXISTS test_students;

CREATE TABLE test_students AS
SELECT * FROM students;

-- Remove all rows

TRUNCATE TABLE test_students;

-- Verify

SELECT *
FROM test_students;