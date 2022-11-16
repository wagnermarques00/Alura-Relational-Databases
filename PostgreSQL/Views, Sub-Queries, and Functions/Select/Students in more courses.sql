--Creating example tables--
CREATE TABLE student (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL
);

CREATE TABLE category (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL 	
);

CREATE TABLE course (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	category_id INTEGER NOT NULL REFERENCES category(id)	
);

CREATE TABLE student_course (
	student_id INTEGER NOT NULL REFERENCES student (id),
	course_id  INTEGER NOT NULL REFERENCES course (id),
	PRIMARY KEY (student_id, course_id)
);

--Populating these tables--
INSERT INTO student (name, lastname) VALUES ('Ichibē', 'Hyōsube'), 
                                            ('Tenjirō', 'Kirinji'),
                                            ('Kirio', 'Hikifune'),
                                            ('Ōetsu', 'Nimaiya'),
                                            ('Senjumaru', 'Shutara');

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
											 
INSERT INTO student_course VALUES (1, 4),
                                  (1, 11),
                                  (2, 1),
                                  (2, 2),
                                  (3, 3),
                                  (3, 4),
                                  (4, 4),
                                  (4, 5),
                                  (4, 6);
							  
--Simple query--
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM category;
SELECT * FROM student_course;
						
--Students in more courses--
SELECT s.name,
       s.lastname,
       COUNT(sc.course_id) AS number_of_courses
    FROM student s
    JOIN student_course sc ON s.id = sc.student_id 
    GROUP BY s.name, s.lastname
    ORDER BY number_of_courses DESC;