-- Remove table if it already exists

DROP TABLE IF EXISTS students_pk;

-- Student table with Primary Key

CREATE TABLE students_pk (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100)
);

-- Insert records

INSERT INTO students_pk (student_name)
VALUES
('Mohit'),
('Rahul'),
('Priya');

-- Verify

SELECT * FROM students_pk;