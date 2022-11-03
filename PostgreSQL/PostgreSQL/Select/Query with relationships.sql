--Creating an example tables--
CREATE TABLE student (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE course (
	id INTEGER NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE student_course (
	student_id INTEGER,
	course_id INTEGER,
	PRIMARY KEY (student_id, course_id),
	
	FOREIGN KEY (student_id)
		REFERENCES student (id),
	FOREIGN KEY (course_id)
		REFERENCES course (id)
			
);

--Populating this tables--
INSERT INTO student 	   (name)  				   VALUES ('Diogo');
INSERT INTO student 	   (name) 	 			   VALUES ('Vinicius');
INSERT INTO course  	   (id, name)			   VALUES (1, 'HTML');
INSERT INTO	course  	   (id, name)			   VALUES (2, 'Javascript');
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 2);

--Checking if it was entered correctly--
SELECT * FROM student; 
SELECT * FROM course; 
SELECT * FROM student_course;

--Querying with simple join--
SELECT * FROM student
	JOIN student_course 	ON student_course.student_id = student_id
	JOIN course 			ON course.id 				 = student_course.course_id;

--Querying with simple join choosing displaying student and course name--
SELECT DISTINCT student."name" AS student_name , course."name" AS course_name 
	FROM student
		INNER JOIN student_course 	ON student_course.student_id = student_id
		INNER JOIN course 			ON course.id 				 = student_course.course_id;