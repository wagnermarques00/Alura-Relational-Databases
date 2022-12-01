--Example function--
CREATE FUNCTION sum_two_numbers(number_1 INTEGER, number_2 INTEGER) RETURNS INTEGER AS '
    SELECT number_1 + number_2;
' LANGUAGE SQL;

--Dropping this function--
DROP FUNCTION sum_two_numbers;