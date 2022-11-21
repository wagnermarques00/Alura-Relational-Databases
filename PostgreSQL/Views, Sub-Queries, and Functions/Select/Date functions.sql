--Creating an example table--
CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    birth_date date NOT NULL
);

--Populating this table--
INSERT INTO student (name, lastname, birth_date) VALUES ('Ichibē', 'Hyōsube', '1997-10-15'), 
                                                        ('Tenjirō', 'Kirinji', '1986-10-25'),
                                                        ('Kirio', 'Hikifune', '1984-08-27'),
                                                        ('Ōetsu', 'Nimaiya', '1985-01-01'),
                                                        ('Senjumaru', 'Shutara', '2000-01-01');
                                
--NOW--
SELECT now();

--Difference between birth_date and now() in days--
SELECT (name || ' ' || lastname) AS complete_name,
       (NOW()::DATE - birth_date) AS days_difference
    FROM student;
    
--Age--
SELECT (name || ' ' || lastname) AS complete_name,
       AGE(birth_date) AS age
    FROM student;
    
--Extracting the Year of the age--
SELECT (name || ' ' || lastname) AS complete_name,
       EXTRACT (YEAR FROM AGE(birth_date)) AS age_in_years
    FROM student;
    
--Extracting the Month of the age--
SELECT (name || ' ' || lastname) AS complete_name,
       EXTRACT (MONTH  FROM AGE(birth_date)) AS age_in_months
    FROM student;
    
--Extracting the Day of the age--
SELECT (name || ' ' || lastname) AS complete_name,
       EXTRACT (DAY  FROM AGE(birth_date)) AS age_in_days
    FROM student;
    
/*  
 * For more date functions, use the link below:
 * https://www.postgresql.org/docs/15/functions-datetime.html
 */