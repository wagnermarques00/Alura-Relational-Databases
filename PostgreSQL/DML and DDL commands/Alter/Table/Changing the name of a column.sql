    --Creating a temporary table--
CREATE TEMPORARY TABLE a (
    column1 VARCHAR(255) NOT NULL,
    column2 VARCHAR(255) NOT NULL,
    UNIQUE (column1, column2)
);    
    
--Changing the name of a column--
ALTER TABLE a
    RENAME column1 TO first_column;