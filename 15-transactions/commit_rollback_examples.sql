-- Transaction with COMMIT

BEGIN;

UPDATE students
SET age = 26
WHERE name = 'Rahul';

COMMIT;

-- Verify

SELECT *
FROM students
WHERE name = 'Rahul';

-- Transaction with ROLLBACK

BEGIN;

UPDATE students
SET age = 99
WHERE name = 'Priya';

ROLLBACK;

-- Verify

SELECT *
FROM students
WHERE name = 'Priya';