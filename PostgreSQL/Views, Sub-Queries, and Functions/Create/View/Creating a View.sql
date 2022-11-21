--Creating example tables--
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL  
);

CREATE TABLE course (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category_id INTEGER NOT NULL REFERENCES category(id)    
);

--Populating these tables--
INSERT INTO category (name) VALUES ('FrontEnd'),
                                   ('Programming'),
                                   ('Databases'),
                                   ('Data Science');
                                  
INSERT INTO course (name, category_id) VALUES ('HTML', 1),
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
              
--Simple query--
SELECT * FROM course;
SELECT * FROM category;
                        
--Query of courses by category--
SELECT category.name AS category,
    COUNT(course.id) AS number_of_courses
    FROM category
    JOIN course ON course.category_id = category.id 
    GROUP BY category;
    
--Transforming the Query above into a View--
CREATE VIEW vw_courses_per_category AS
    SELECT category.name AS category,
        COUNT(course.id) AS number_of_courses
        FROM category
        JOIN course ON course.category_id = category.id 
        GROUP BY category;
    
--Querying this view--
SELECT * FROM vw_courses_per_category;

--Creating a view with all courses in the Programming category--
CREATE VIEW vw_programming_courses AS
    SELECT name 
        FROM course
        WHERE category_id = 2;
        
--Querying this view--
SELECT * FROM vw_programming_courses;