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
INSERT INTO student 	   (name) 	 			   VALUES ('Nico');
INSERT INTO student 	   (name) 	 			   VALUES ('João');
INSERT INTO course  	   (id, name)			   VALUES (1, 'HTML');
INSERT INTO	course  	   (id, name)			   VALUES (2, 'Javascript');
INSERT INTO	course  	   (id, name)			   VALUES (3, 'CSS');
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 2);


--Checking if it was entered correctly--
SELECT * FROM student; 
SELECT * FROM course; 
SELECT * FROM student_course;

--LEFT JOIN--
SELECT s."name" AS "Student Name", c."name" AS "Course Name"
	FROM student s
	LEFT JOIN student_course sc ON sc.student_id = s.id
	LEFT JOIN course c 			ON c.id  		 = sc.course_id;

--RIGHT JOIN--
SELECT s."name" AS "Student Name", c."name" AS "Course Name"
	FROM student s
	RIGHT JOIN student_course sc ON sc.student_id = s.id
	RIGHT JOIN course c 			ON c.id  		 = sc.course_id;

--FULL JOIN--
SELECT s."name" AS "Student Name", c."name" AS "Course Name"
	FROM student s
	FULL JOIN student_course sc ON sc.student_id = s.id
	FULL JOIN course c 			ON c.id  		 = sc.course_id;


--CROSS JOIN--
SELECT s."name" AS "Student Name", c."name" AS "Course Name"
	FROM student s
	CROSS JOIN course c;