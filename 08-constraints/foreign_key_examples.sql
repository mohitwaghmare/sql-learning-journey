-- Remove table if it already exists

DROP TABLE IF EXISTS courses_fk;

-- Courses table with Foreign Key

CREATE TABLE courses_fk (
    course_id SERIAL PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),

    FOREIGN KEY (student_id)
    REFERENCES students_pk(student_id)
);

-- Valid insert

INSERT INTO courses_fk (student_id, course_name)
VALUES
(1, 'Java');

-- Verify

SELECT * FROM courses_fk;