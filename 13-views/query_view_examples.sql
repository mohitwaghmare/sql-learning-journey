-- Create a view for adult students

CREATE OR REPLACE VIEW adult_students AS
SELECT *
FROM students
WHERE age >= 21;

-- Query the view

SELECT *
FROM adult_students;