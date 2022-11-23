--Create temporary table--
CREATE TEMPORARY TABLE a (
    example VARCHAR(255)
);

/*
 * A temporary table is visible only to the session that creates it. 
 * In other words, it is invisible to other sessions.
 */