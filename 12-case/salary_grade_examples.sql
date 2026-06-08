-- Multiple conditions

SELECT
    name,
    age,
    CASE
        WHEN age >= 24 THEN 'Grade A'
        WHEN age >= 22 THEN 'Grade B'
        WHEN age >= 20 THEN 'Grade C'
        ELSE 'Grade D'
    END AS grade
FROM students;