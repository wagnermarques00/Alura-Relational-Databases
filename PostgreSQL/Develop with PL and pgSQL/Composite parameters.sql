--Creating an example table--
CREATE TABLE academic.instructor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    salary DECIMAL (10, 2)
);

--Populating this table--
INSERT INTO academic.instructor (name, salary) VALUES ('All Might', 100),
                                                      ('Eraser Head', 200);

--Creating a function that doubles the salary--
CREATE FUNCTION doubles_salary(academic.instructor) RETURNS DECIMAL AS $$ 
    SELECT $1.salary * 2 AS double_salary; 
$$ LANGUAGE SQL;

--Querying this table--
SELECT name, doubles_salary(academic.instructor.*) 
    FROM academic.instructor;