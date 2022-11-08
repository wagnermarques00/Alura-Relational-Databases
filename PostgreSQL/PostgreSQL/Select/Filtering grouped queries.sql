--Creating an example table--
CREATE TABLE public.student (
	id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT student_pkey PRIMARY KEY (id)
);

CREATE TABLE public.course (
	id int4 NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT course_id_key UNIQUE (id)
);

CREATE TABLE public.student_course (
	student_id int4 NOT NULL,
	course_id int4 NOT NULL,
	CONSTRAINT student_course_pkey PRIMARY KEY (student_id, course_id)
);

CREATE TABLE employee (
	id serial4 NOT NULL,
	registration varchar(10) NULL,
	"name" varchar(255) NULL,
	lastname varchar(255) NULL,
	CONSTRAINT employee_pkey PRIMARY KEY (id)
);

--Populating these example tables--
INSERT INTO student ("name") VALUES ('Diogo');
INSERT INTO student ("name") VALUES ('Nico');
INSERT INTO student ("name") VALUES ('João');
INSERT INTO student ("name") VALUES ('Vinicius');
INSERT INTO course (id, "name") VALUES (1, 'HTML');
INSERT INTO course (id, "name") VALUES (2, 'Javascript');
INSERT INTO course (id, "name") VALUES (3, 'CSS');
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (1, 3);
INSERT INTO student_course (student_id, course_id) VALUES (3, 1);
INSERT INTO student_course (student_id, course_id) VALUES (10, 1);
INSERT INTO employee (id, registration, "name", lastname) VALUES (1, 'M001', 'Frodo', 'Baggins');
INSERT INTO employee (id, registration, "name", lastname) VALUES (2, 'M002', 'Samwise', 'Gamgee');
INSERT INTO employee (id, registration, "name", lastname) VALUES (3, 'M003', 'Meriadoc', 'Brandybuck');
INSERT INTO employee (id, registration, "name", lastname) VALUES (4, 'M004', 'Peregrin', 'Took');
INSERT INTO employee (id, registration, "name", lastname) VALUES (5, 'M005', 'Bilbo', 'Baggins');


--General query of all tables--
SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM student_course;

--Filtering grouped queries by name--
SELECT c."name" , COUNT(s.id) 
	FROM course c
	LEFT JOIN student_course sc ON c.id = sc.course_id
	LEFT JOIN student s 		ON s.id = sc.student_id
	WHERE c."name" = 'HTML'
	GROUP BY c."name";

--Filtering grouped queries by grouped value--
SELECT c."name" , COUNT(s.id) 
	FROM course c
	LEFT JOIN student_course sc ON c.id = sc.course_id
	LEFT JOIN student s 		ON s.id = sc.student_id
	GROUP BY c."name"
	HAVING COUNT(s.id) > 0;

SELECT e.lastname, COUNT(e.id)	
	FROM employee e
	GROUP BY e.lastname 
	HAVING COUNT(id) > 1;