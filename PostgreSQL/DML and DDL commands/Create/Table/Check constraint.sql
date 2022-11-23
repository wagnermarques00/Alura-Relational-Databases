--Create temporary table--
CREATE TEMPORARY TABLE a (
    example VARCHAR(255) NOT NULL CHECK(example <> '')
);

--Trying insert a record with ''--
INSERT INTO a VALUES(''); /* SQL Error [23514]: ERROR: new row for relation "a" violates check constraint "a_example_check" */

