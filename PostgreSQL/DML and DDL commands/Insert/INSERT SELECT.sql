--Creating example tables--
CREATE TABLE academic.category (
    id SERIAL PRIMARY KEY,
    "name" varchar(255) NOT NULL,
);

CREATE TABLE academic.course (
    id SERIAL PRIMARY KEY,
    "name" varchar(255) NOT NULL,
    category_id INTEGER NOT NULL REFERENCES academic.category(id)
);

--Populating these tables--
INSERT INTO academic.category (name) VALUES ('FrontEnd'),
                                            ('Programming'),
                                            ('Databases'),
                                            ('Data Science');
                                            
INSERT INTO academic.course (name, category_id) VALUES ('HTML', 1),
                                                       ('CSS', 1),
                                                       ('JS', 1),
                                                       ('PHP', 2),
                                                       ('Java', 2),
                                                       ('C++', 2),
                                                       ('PostgreSQL', 3),
                                                       ('MySQL', 3),
                                                       ('Oracle', 3),
                                                       ('SQL Server', 3),
                                                       ('SQLite', 3),
                                                       ('Pandas', 4),
                                                       ('Machine Learning', 4),
                                                       ('Power BI', 4);


--Query of courses of the Programming category--
SELECT c.id,
       c."name" 
    FROM academic.course c 
    WHERE c.category_id = 2;
    
--Creating a temporary table just to exemplify the question--
CREATE TEMPORARY TABLE programming_courses (
    id_course INTEGER PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL
);

--INSERT SELECT--
INSERT INTO programming_courses 
    SELECT c.id, c."name" 
        FROM academic.course c 
        WHERE c.category_id = 2; /* the values ​​are inserted according to the order of the select, pay attention!!! */
        
--Checking if everything went well--
SELECT * FROM programming_courses; /* It worked out! */