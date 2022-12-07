--Creating an example table--
CREATE TABLE academic.instructor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    salary DECIMAL (10, 2)
);

--Populating this table--
INSERT INTO academic.instructor (name, salary) VALUES ('All Might', 100),
                                                      ('Eraser Head', 200),
                                                      ('Present Mic', 300),
                                                      ('Midnight', 400),
                                                      ('Snipe', 500),
                                                      ('Ectoplasm', 600),
                                                      ('Power Loader', 700),
                                                      ('Vlad King', 800),
                                                      ('Gran Torino', 900);
--Default Query--                               
SELECT * FROM academic.instructor;

--Creating a function that return instructors that receive more than the parameter--
CREATE FUNCTION well_paid_instructors(base_value DECIMAL) RETURNS SETOF academic.instructor AS $$
    SELECT * FROM academic.instructor WHERE salary > base_value;
$$ LANGUAGE SQL;

--Querying this function--
SELECT * FROM well_paid_instructors(600); /* 
                                           * 7  Power Loader 700.00
                                           * 8   Vlad King   800.00
                                           * 9   Gran Torino 900.00 
                                           */

--Another way of creating a function return a set--
CREATE FUNCTION underpaid_instructors(base_value DECIMAL) RETURNS TABLE (id INTEGER, name VARCHAR, salary DECIMAL) AS $$
    SELECT * FROM academic.instructor WHERE salary < base_value;
$$ LANGUAGE SQL;

--Querying this function--
SELECT * FROM underpaid_instructors(600); /*
                                           * 1  All Might    100.00
                                           * 2   Eraser Head 200.00
                                           * 3   Present Mic 300.00
                                           * 4   Midnight    400.00
                                           * 5   Snipe       500.00
                                           */                                             