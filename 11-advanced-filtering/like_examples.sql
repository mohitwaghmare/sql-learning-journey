-- Names starting with M

SELECT *
FROM students
WHERE name LIKE 'M%';

-- Names ending with t

SELECT *
FROM students
WHERE name LIKE '%t';

-- Names containing h

SELECT *
FROM students
WHERE name LIKE '%h%';