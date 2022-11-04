--Creating example tables--
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

--Populating these example tables--
INSERT INTO student 	   (name)  				   VALUES ('Diogo');
INSERT INTO student 	   (name) 	 			   VALUES ('Vinicius');
INSERT INTO student 	   (name) 	 			   VALUES ('Nico');
INSERT INTO student 	   (name) 	 			   VALUES ('João');
INSERT INTO course  	   (id, name)			   VALUES (1, 'HTML');
INSERT INTO	course  	   (id, name)			   VALUES (2, 'Javascript');
INSERT INTO	course  	   (id, name)			   VALUES (3, 'CSS');
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (1, 3);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 2);
INSERT INTO student_course (student_id, course_id) VALUES (3, 1);

--Checking if it was entered correctly--
SELECT * FROM student; 
SELECT * FROM course; 
SELECT * FROM student_course;

--Trying to update student 2--
UPDATE student
	SET   id = 10
	WHERE id = 2; /* SQL Error [23503]: ERROR: update or delete on table "student" violates foreign key constraint "student_course_student_id_fkey" on table "student_course" */
	
--Droping the student_course table--
DROP TABLE student_course;

--Creating student_course table with on update cascade--
CREATE TABLE student_course (
	student_id INTEGER,
	course_id INTEGER,
	PRIMARY KEY (student_id, course_id),
	
	FOREIGN KEY (student_id)
		REFERENCES student (id)
		ON UPDATE CASCADE,
	FOREIGN KEY (course_id)
		REFERENCES course (id)			
);

--Populating the student_course table again--
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (1, 3);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 2);
INSERT INTO student_course (student_id, course_id) VALUES (3, 1);

--Now the update on student 2 will be successful--
UPDATE student
	SET   id = 10
	WHERE id = 2;
	
--Checking if the values ​​were updated successfully--
SELECT s.id AS "Student Id", s."name" AS "Student Name", c."name" AS "Course Name"
	FROM student s 
	INNER JOIN student_course sc ON s.id = sc.student_id 
	INNER JOIN course c 		 ON c.id = sc.course_id;