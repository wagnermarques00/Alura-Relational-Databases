--Creating example tables--
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL
);

--Populating this table--
INSERT INTO student (name, lastname) VALUES ('Ichibē', 'Hyōsube'), 
                                            ('Tenjirō', 'Kirinji'),
                                            ('Kirio', 'Hikifune'),
                                            ('Ōetsu', 'Nimaiya'),
                                            ('Senjumaru', 'Shutara');

--Simple query--
SELECT * from student;

--Concatenating two texts from different columns--
SELECT (name || ' ' || lastname) AS complete_name
    FROM student;
    
--Another way of concatenating--
SELECT CONCAT(name, ' ', lastname) AS complete_name
    FROM student;

--Diferences--
SELECT ('Ichibē' || NULL || '' || 'Hyōsube') FROM student; /* NULL */
SELECT CONCAT('Ichibē', NULL, ' ', 'Hyōsube') FROM student; /* Ichibē Hyōsube */


--Converting the above function letters to uppercase--
SELECT UPPER(CONCAT('Ichibē', NULL, ' ', 'Hyōsube')) FROM student; /* ICHIBĒ HYŌSUBE */

--Converting the above function letters to lowercase--
SELECT LOWER(CONCAT('Ichibē', NULL, ' ', 'Hyōsube')) FROM student; /* ichibē hyōsube */

--Removing unnecessary leading and trailing spaces--
SELECT TRIM(CONCAT('', 'Ichibē', NULL, ' ', 'Hyōsube', ''))
    FROM student; /* Ichibē Hyōsube */
    
    
/*  
 * For more string functions, use the link below:
 * https://www.postgresql.org/docs/15/functions-string.html
 */