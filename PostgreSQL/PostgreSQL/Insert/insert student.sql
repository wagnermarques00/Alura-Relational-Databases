INSERT INTO student(
	name,
	document,
	observation,
	age,
	balance,
	height,
	active,
	birth_date,
	class_time,
	enrollment_date	
)
VALUES (
	'wagner',	
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget sollicitudin turpis, non malesuada nisi. Vivamus vitae sodales metus. Integer pulvinar congue nibh, eu porta magna dictum vitae. Sed eu justo id neque pulvinar semper ac at dui. Donec ultrices volutpat orci, vel venenatis tortor interdum vitae. Sed at ipsum ut mi viverra convallis. Nulla viverra sed justo id sollicitudin. Nam vel neque vel mi tempor cursus vitae eu nibh. Maecenas tempus nibh auctor, facilisis orci in, ultricies velit. Integer sit amet fringilla magna, id luctus odio.',
	31,
	100.50,
	1.69,
	TRUE,
	'1991-07-22', /* YYYY-MM-DD */
	'17:30:00',
	'2022-10-21 17:28:30'	
);

select * from student;