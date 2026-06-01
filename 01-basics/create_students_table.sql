-- Create a table named students
CREATE TABLE students (

    -- Unique ID generated automatically
    id SERIAL PRIMARY KEY,

    -- Student name (maximum 100 characters)
    name VARCHAR(100),

    -- Student city (maximum 100 characters)
    city VARCHAR(100)
);