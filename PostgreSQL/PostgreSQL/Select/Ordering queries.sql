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
SELECT * FROM employee;

--Sorting employees by name--
SELECT * 
	FROM employee
	ORDER BY employee."name";
	
--Sorting employees by name in descending order--
SELECT * 
	FROM employee
	ORDER BY employee."name" DESC;
	
--Sorting employees by lastname and later by name--
SELECT * 
	FROM employee
	ORDER BY employee.lastname, employee."name";
	
--Sorting employees by the second column of the table(registration)--
SELECT * 
	FROM employee
	ORDER BY 2;
	
--Mixing all of above(avoid not specifying the table)--
SELECT *
	FROM employee
	ORDER BY 4 DESC , registration DESC, employee."name";
	
