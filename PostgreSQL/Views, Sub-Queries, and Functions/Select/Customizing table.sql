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
                        
--Nested query (subquery)--
SELECT * FROM course c 
    WHERE category_id IN (
        SELECT id FROM category
            WHERE "name" NOT LIKE '% %'
    );
    
--Customized query--
SELECT category,
       number_of_courses
    FROM (
        SELECT category.name AS category,
            COUNT(course.id) AS number_of_courses
            FROM category
            JOIN course ON course.category_id = category.id
            GROUP BY category 
    ) AS category_courses /* customized table */
    WHERE number_of_courses >3;