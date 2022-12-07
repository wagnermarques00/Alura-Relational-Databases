--Creating a function that returns both addition and subtraction--
CREATE FUNCTION sum_and_subtraction(number_1 INTEGER, number_2 INTEGER, OUT "sum" INTEGER, OUT "subtraction" INTEGER) AS $$ 
    SELECT number_1 + number_2 AS "sum", number_1 - number_2 AS "subtraction";
$$ LANGUAGE SQL;

--Querying this function--
SELECT * FROM sum_and_subtraction(3,2); /* 
                                         * 5   1
                                         */

--Creating a type for this return--
CREATE TYPE two_values AS ("sum" INTEGER, "subtraction" INTEGER);

--Refactoring the sum_and_subtraction() function--
DROP FUNCTION sum_and_subtraction;

CREATE FUNCTION sum_and_subtraction(number_1 INTEGER, number_2 INTEGER) RETURNS two_values AS $$ 
    SELECT number_1 + number_2 AS "sum", number_1 - number_2 AS "subtraction";
$$ LANGUAGE SQL;

--Querying this function again--
SELECT * FROM sum_and_subtraction(5,10); /* 
                                         * 15   -5
                                         */