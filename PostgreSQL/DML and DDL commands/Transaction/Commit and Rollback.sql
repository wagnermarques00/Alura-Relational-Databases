--Creating a temporary table--
CREATE TEMPORARY TABLE temp_table (
    id SERIAL PRIMARY KEY,
    "name" varchar(255) NOT NULL
);

--Populating this table--
INSERT INTO temp_table (name) VALUES ('FrontEnd'),
                                     ('Programming'),
                                     ('Databases'),
                                     ('Data Science');


--Default query--
SELECT * FROM temp_table;

--BEGIN, deleting all records --
BEGIN;
DELETE FROM temp_table;

--Undoing the deletion--
ROLLBACK;

--BEGIN another transaction--
BEGIN;
DELETE FROM temp_table WHERE id = 1;

--Commiting--
COMMIT;