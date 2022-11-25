--Creating a temporary table--
CREATE TEMPORARY TABLE auto (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

--Populating this table--
INSERT INTO auto (name) VALUES ('Sōsuke Aizen');

--Default query--
SELECT * FROM auto; /* 1    Sōsuke Aizen */

--Inserting the id 2 manually--
INSERT INTO auto (id, name) VALUES (2, 'King Yhwach');

--Default query--
SELECT * FROM auto; /* 
                     * 1    Sōsuke Aizen
                     * 2    King Yhwach
                     */

--Trying to insert without the id--
INSERT INTO auto (name) VALUES ('Gerard Valkyrie'); /*
                                                     * SQL Error [23505]: ERROR: duplicate key value violates unique constraint "auto_pkey"
                                                     * Detail: Key (id)=(2) already exists.
                                                     * -> This is due to the manual insertion of the ID, which is not advisable due to the SERIAL statement 
                                                     */

--Trying again (now the id will work, because of the ID in the Serial has been changed inside)--
INSERT INTO auto (name) VALUES ('Gerard Valkyrie');

--Default query--
SELECT * FROM auto; /* 
                     * 1    Sōsuke Aizen
                     * 2    King Yhwach
                     * 3    Gerard Valkyrie 
                     */

--Creating a manual sequence(default)--
CREATE SEQUENCE i_created;

--dropping the temporary table--
DROP TABLE auto;

--Creating the same temporary table, but with this sequence--
CREATE TEMPORARY TABLE auto (
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('i_created') ,
    name VARCHAR(30) NOT NULL
);

--Useful commands--
SELECT CURRVAL('i_created'); /* See the current value of this sequence. Since there is still no value, it will give error */
SELECT NEXTVAL('i_created'); /* 1  -> Advanced one */
SELECT NEXTVAL('i_created'); /* 2  -> Advanced one */
SELECT CURRVAL('i_created'); /* 2 */

--Populating this table--
INSERT INTO auto (name) VALUES ('Sōsuke Aizen');

--Default query--
SELECT * FROM auto; /* 
                     * 3    Sōsuke Aizen 
                     * Since CURRVAL was 2, when inserting data in the table, it automatically increased to 3*/

/*
 * Check out the documentation at the link below:
 * https://www.postgresql.org/docs/15/sql-createsequence.html
 */