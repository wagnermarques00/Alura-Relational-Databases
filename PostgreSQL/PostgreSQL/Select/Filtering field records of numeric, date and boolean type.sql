--Just populating
INSERT INTO student ("name") VALUES ('Vinícius Dias');
INSERT INTO student ("name") VALUES ('Nico Steppat');
INSERT INTO student ("name") VALUES ('João Roberto');
INSERT INTO student ("name") VALUES ('Diego');
INSERT INTO student (name, document, observation, age, balance, height, active, birth_date, class_time, enrollment_date) VALUES ( 'Diogo', '12345678901', 'Lorem ipsum', 31, 100.50,	1.69, TRUE, '1991-07-22', '17:30:00', '2022-10-21 17:28:30');


SELECT *
	FROM student s 
	WHERE "document" IS NULL; /* filter all results that have "document" null */
	
SELECT *
	FROM student s 
	WHERE "document" IS NOT NULL; /* filter all results that have "document" not null */
	
SELECT *
	FROM student s 
	WHERE age = 31; /* 1 result, null values are not filtered */
	
	
SELECT *
	FROM student s 
	WHERE age >= 30; /* 1 result, since 31 is greater than 30. you can use <=, >, < too */
	
SELECT *
	FROM student s 
	WHERE age BETWEEN 0 AND 100; /* filter all values between 0 and 100*/
	
SELECT *
	FROM student s 
	WHERE active  = TRUE; /* 1 result => the only active student */
	
SELECT *
	FROM student s 
	WHERE active  = FALSE ; /* 0 result => no inactive students */