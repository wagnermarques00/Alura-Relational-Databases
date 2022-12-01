--Creating an example table--
CREATE TEMPORARY TABLE a (
    name VARCHAR(255) NOT NULL
);

--Creating a function--
CREATE FUNCTION create_a (named VARCHAR) RETURNS VARCHAR AS '
    SELECT * FROM a; 
' LANGUAGE SQL;

--Creating or replacing this function--
CREATE OR REPLACE FUNCTION create_a (named VARCHAR) RETURNS VARCHAR AS '
    INSERT INTO a (name) VALUES (create_a.named);
    SELECT * FROM a; 
' LANGUAGE SQL;

--Using this function--
SELECT create_a('One person') /* One person */ 