-- Categorize students based on age

SELECT
    name,
    age,
    CASE
        WHEN age >= 22 THEN 'Senior'
        ELSE 'Junior'
    END AS category
FROM students;