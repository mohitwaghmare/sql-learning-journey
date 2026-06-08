-- Create a view for students from Nagpur

CREATE OR REPLACE VIEW nagpur_students AS
SELECT *
FROM students
WHERE city = 'Nagpur';