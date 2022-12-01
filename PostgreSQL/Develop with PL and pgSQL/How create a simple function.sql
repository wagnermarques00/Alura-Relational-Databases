--Example function--
CREATE FUNCTION first_function() RETURNS INTEGER AS '
    SELECT (5 - 3) *2
' LANGUAGE SQL;

--Calling the function--
SELECT first_function();

--Renaming the column--
SELECT first_function() AS "value";