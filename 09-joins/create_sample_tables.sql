-- Clean up previous runs

DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students_join;

-- Students table

CREATE TABLE students_join (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100)
);

-- Courses table

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100)
);

-- Students

INSERT INTO students_join (student_name)
VALUES
('Mohit'),
('Rahul'),
('Priya'),
('Sneha');

-- Courses

INSERT INTO courses (student_id, course_name)
VALUES
(1, 'Java'),
(1, 'SQL'),
(2, 'Python'),
(5, 'React');

-- Verify

SELECT * FROM students_join;
SELECT * FROM courses;