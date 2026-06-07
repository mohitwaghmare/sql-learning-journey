-- INNER JOIN

SELECT
    s.student_name,
    c.course_name
FROM students_join s
INNER JOIN courses c
ON s.student_id = c.student_id;