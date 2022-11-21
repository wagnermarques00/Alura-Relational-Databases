--Creating a schema--
CREATE SCHEMA academic;

--Dropping all views that were in the public schema--
DROP VIEW vw_courses_per_category, vw_programming_courses;

--Dropping all tables that were in the public schema--
DROP TABLE category, course, employee, student, student_course;

--Recreating the tables, now on the academic schema--
CREATE TABLE academic.category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL  
);

CREATE TABLE academic.course (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category_id INTEGER NOT NULL REFERENCES academic.category(id)    
);

CREATE TABLE academic.student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE academic.student_course (
    student_id INTEGER NOT NULL REFERENCES academic.student (id),
    course_id  INTEGER NOT NULL REFERENCES academic.course (id),
    PRIMARY KEY (student_id, course_id)
);