--Creating an example tables--
CREATE TABLE student (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE course (
	id INTEGER NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL
);

--Populating this tables--
INSERT INTO student (name) VALUES('Diogo');
INSERT INTO student (name) VALUES('Vinicius');
INSERT INTO course (id, name) VALUES (1, 'HTML');
INSERT INTO	course (id, name) VALUES (2, 'Javascript');

--Checking if it was entered correctly--
SELECT * FROM student; 
SELECT * FROM course; 

--Creating a relationship table with foreign keys--
CREATE TABLE student_course (
	student_id INTEGER NOT NULL REFERENCES student (id),
	course_id  INTEGER NOT NULL REFERENCES course (id),
	PRIMARY KEY (student_id, course_id)
);

--Populating this relationship table--
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);

--Trying to populate this relationship table with a student who is not registered--
INSERT INTO student_course (student_id, course_id) VALUES (3, 1); /* SQL Error [23503]: ERROR: insert or update on table "student_course" violates foreign key constraint  */

--Simple query--
SELECT * FROM student_course;