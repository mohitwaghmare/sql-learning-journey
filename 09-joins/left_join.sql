-- LEFT JOIN

SELECT
    s.student_name,
    c.course_name
FROM students_join s
LEFT JOIN courses c
ON s.student_id = c.student_id;