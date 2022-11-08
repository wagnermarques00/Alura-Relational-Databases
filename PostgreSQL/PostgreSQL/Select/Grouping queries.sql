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
	
--DISTINCT--
SELECT DISTINCT lastname 
	FROM employee;
	
--GROUP BY--
SELECT count(name), lastname 
	FROM employee
	GROUP BY lastname;
