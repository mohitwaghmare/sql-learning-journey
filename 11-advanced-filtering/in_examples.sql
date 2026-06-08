-- Students from Nagpur or Pune

SELECT *
FROM students
WHERE city IN ('Nagpur', 'Pune');

-- Students from Mumbai or Delhi

SELECT *
FROM students
WHERE city IN ('Mumbai', 'Delhi');