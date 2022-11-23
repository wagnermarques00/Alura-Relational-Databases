--Creating a temporary table--
CREATE TEMPORARY TABLE a (
    column1 VARCHAR(255) NOT NULL,
    column2 VARCHAR(255) NOT NULL,
    UNIQUE (column1, column2)
);

INSERT INTO a VALUES('a', 'b'); /* ok */
INSERT INTO a VALUES('a', 'b'); /* SQL Error [23505]: ERROR: duplicate key value violates unique constraint "a_column1_column2_key" */
INSERT INTO a VALUES('a', 'c'); /* ok*/