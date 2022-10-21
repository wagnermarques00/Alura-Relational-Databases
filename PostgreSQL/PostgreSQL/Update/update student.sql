SELECT * 
	FROM student
WHERE id = 1; /* got one result */

UPDATE student
	SET name = 'rivania',
	document = '98756432109',
	observation = 'another observation',
	age = 35,
	balance = 200.00,
	height = 1.65,
	active = FALSE,
	birth_date = '2022-03-28',
	class_time = '17:00:00',
	enrollment_date = '2022-10-21 17:48:00'
WHERE id = 1;
