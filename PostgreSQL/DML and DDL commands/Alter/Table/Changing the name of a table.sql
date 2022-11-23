--Creating a temporary table--
CREATE TEMPORARY TABLE a (
    column1 VARCHAR(255) NOT NULL,
    column2 VARCHAR(255) NOT NULL,
    UNIQUE (column1, column2)
);

--Changing the name of this table--
ALTER TABLE a
    RENAME TO b;
    
    
--Changing the name of a column--
ALTER TABLE b
    RENAME column1 TO fisrt_column;