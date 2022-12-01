--Creating an example table--
CREATE TEMPORARY TABLE a (
    name VARCHAR(255) NOT NULL
);

--Creating a function--
CREATE FUNCTION create_a (named VARCHAR) RETURNS VARCHAR AS '
    SELECT * FROM a; 
' LANGUAGE SQL;

--Triying to create or replace this function with no return--
CREATE OR REPLACE FUNCTION create_a (named VARCHAR) RETURNS VOID AS '
    INSERT INTO a (name) VALUES (create_a.named);
' LANGUAGE SQL; /*
                 *SQL Error [42P13]: ERROR: cannot change return type of existing function
                 *Hint: Use DROP FUNCTION create_a(character varying) first.
                 */

--Dropping this function--
DROP FUNCTION create_a;

--Creating a this function with no return--
CREATE OR REPLACE FUNCTION create_a (named VARCHAR) RETURNS VOID AS '
    INSERT INTO a (name) VALUES (create_a.named);
' LANGUAGE SQL;

--Using this function--
SELECT create_a('One person'); /* NULL */

--Checking--
SELECT * FROM a; /* One person */