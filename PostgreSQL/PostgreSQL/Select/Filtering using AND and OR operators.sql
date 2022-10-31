--Just populating
INSERT INTO student ("name") VALUES ('Vinícius Dias');
INSERT INTO student ("name") VALUES ('Nico Steppat');
INSERT INTO student ("name") VALUES ('João Roberto');
INSERT INTO student ("name") VALUES ('Diego');
INSERT INTO student (name, document, observation, age, balance, height, active, birth_date, class_time, enrollment_date) VALUES ( 'Diogo', '12345678901', 'Lorem ipsum', 31, 100.50,	1.69, TRUE, '1991-07-22', '17:30:00', '2022-10-21 17:28:30');


SELECT * 
	FROM student s 
	WHERE "name" LIKE 'D%'; /* 2 results (Diego and Diogo) */
	
SELECT * 
	FROM student s 
	WHERE "name" LIKE 'D%'
	AND "document" IS NOT NULL; /* 1 result (Diogo) */
	
SELECT * 
	FROM student s 
	WHERE "name" LIKE 'Diogo%'
	OR  "name" LIKE 'Vinícius%'; /* 2 results (Diogo and Vinícius Dias) */