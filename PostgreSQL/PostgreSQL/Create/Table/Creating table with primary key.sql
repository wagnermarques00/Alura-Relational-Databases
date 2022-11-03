--Creating an example table without a Primary Key--
CREATE TABLE course (
	id INTEGER NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL
);

--Examples of inserting this table--
INSERT INTO course (id, name) VALUES (NULL, NULL); /* SQL Error [23502]: ERROR: null value in column "id" of relation "course" violates not-null CONSTRAINT */
INSERT INTO course (id, name) VALUES (1, 'HTML'); /* successfully inserted */ 
INSERT INTO	course (id, name) VALUES (1, 'Javascript'); /* SQL Error [23505]: ERROR: duplicate key value violates unique constraint "course_id_key" */
INSERT INTO	course (id, name) VALUES (2, 'Javascript'); /* successfully inserted */

--Droping this table--
DROP TABLE course;

--Creating an example table with primary key --
CREATE TABLE course (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

--Populating this table--
INSERT INTO course (id, name) VALUES (1, 'HTML'); /* successfully inserted */
INSERT INTO	course (id, name) VALUES (2, 'Javascript'); /* successfully inserted */
