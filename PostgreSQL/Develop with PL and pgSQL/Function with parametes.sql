--Example function--
CREATE FUNCTION sum_two_numbers(number_1 INTEGER, number_2 INTEGER) RETURNS INTEGER AS '
    SELECT number_1 + number_2;
' LANGUAGE SQL;

--Using this function with parametes--
SELECT sum_two_numbers(10, 2) AS "sum";

--Creating the same function without naming the parametes (avoid this)--
CREATE FUNCTION sum_two_numbers(INTEGER, INTEGER) RETURNS INTEGER AS '
    SELECT $1 + $2;
' LANGUAGE SQL;