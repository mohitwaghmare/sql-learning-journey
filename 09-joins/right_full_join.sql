-- RIGHT JOIN

SELECT
    s.student_name,
    c.course_name
FROM students_join s
RIGHT JOIN courses c
ON s.student_id = c.student_id;

-- FULL OUTER JOIN

SELECT
    s.student_name,
    c.course_name
FROM students_join s
FULL OUTER JOIN courses c
ON s.student_id = c.student_id;