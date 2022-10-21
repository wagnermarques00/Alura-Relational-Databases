CREATE TABLE student (
	id SERIAL,
	name VARCHAR(255),
	document CHAR(11),
	observation TEXT,
	age INTEGER,
	balance NUMERIC(10,2), /* an example: 1234567890,12 */
	height REAL,
	active BOOLEAN,
	birth_date DATE,
	class_time TIME,
	enrollment_date TIMESTAMP
);