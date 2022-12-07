--Creating an example table--
CREATE TABLE academic.instructor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    salary DECIMAL (10, 2)
);

--Populating this table--
INSERT INTO academic.instructor (name, salary) VALUES ('All Might', 100),
                                                      ('Eraser Head', 200);
                                                      
--Creating a function with composite return--
CREATE FUNCTION create_false_instructor() RETURNS academic.instructor AS $$
    SELECT 22 AS id, 'false_name' AS name, 200::DECIMAL(10, 2) AS salary ;
$$ LANGUAGE SQL;

--Querying this function--
SELECT * FROM create_false_instructor();
SELECT id, salary FROM create_false_instructor();

