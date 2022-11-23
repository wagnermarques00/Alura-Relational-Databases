--Creating a table--
CREATE TABLE academic.category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL  
);


--Creating a table, only if not exists--
CREATE TABLE IF NOT EXISTS academic.category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL  
); /* relation "category" already exists, skipping */