-- UNIQUE

DROP TABLE IF EXISTS users_unique;

CREATE TABLE users_unique (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- NOT NULL

DROP TABLE IF EXISTS users_not_null;

CREATE TABLE users_not_null (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL
);

-- DEFAULT

DROP TABLE IF EXISTS users_default;

CREATE TABLE users_default (
    user_id SERIAL PRIMARY KEY,
    country VARCHAR(50) DEFAULT 'India'
);

-- CHECK

DROP TABLE IF EXISTS users_check;

CREATE TABLE users_check (
    user_id SERIAL PRIMARY KEY,
    age INT CHECK (age >= 18)
);