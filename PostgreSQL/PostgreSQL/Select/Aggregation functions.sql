--Creating an example table--
CREATE TABLE employee (
	id 			 SERIAL PRIMARY KEY,
	registration VARCHAR(10),
	name 		 VARCHAR(255),
	lastname 	 VARCHAR(255)	
);

--Populating this example table--
INSERT INTO employee (registration, name, lastname) VALUES ('M001', 'Frodo',    'Baggins');
INSERT INTO employee (registration, name, lastname) VALUES ('M002', 'Samwise',  'Gamgee');
INSERT INTO employee (registration, name, lastname) VALUES ('M003', 'Meriadoc', 'Brandybuck');
INSERT INTO employee (registration, name, lastname) VALUES ('M004', 'Peregrin', 'Took');
INSERT INTO employee (registration, name, lastname) VALUES ('M005', 'Bilbo',    'Baggins');

--General consultation of all employees--
SELECT * 
	FROM employee;
	
--COUNT--
SELECT count(id) 
	FROM employee; /* 5 */
	
--SUM--
SELECT sum(id)
	FROM employee; /* 15 */
	
--MAX--
SELECT max(id)
	FROM employee; /* 5 */
	
--MIN--
SELECT min(id)
	FROM employee; /* 1 */
	
--AVG--
SELECT avg(id)
	FROM employee; /* 3 */