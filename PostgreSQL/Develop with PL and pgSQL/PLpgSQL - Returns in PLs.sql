--Creating temporary tables--
CREATE TEMPORARY TABLE temp_a (
    "name" VARCHAR(255) NOT NULL
);

CREATE TEMPORARY TABLE temp_instructor(
    id SERIAL,
    "name" VARCHAR(255) NOT NULL,
    salary DECIMAL
);

--Populating--
INSERT INTO temp_instructor (name, salary) VALUES ('All Might', 100),
                                                      ('Eraser Head', 200),
                                                      ('Present Mic', 300),
                                                      ('Midnight', 400),
                                                      ('Snipe', 500),
                                                      ('Ectoplasm', 600),
                                                      ('Power Loader', 700),
                                                      ('Vlad King', 800),
                                                      ('Gran Torino', 900);

--Creating a function with no return--
CREATE FUNCTION pl_create_a("name" VARCHAR) RETURNS VOID AS $$ 
    BEGIN
        INSERT INTO temp_a ("name") VALUES ('Midoriya');
    END;
    
$$ LANGUAGE plpgsql;

--Querying this function--
SELECT pl_create_a('John Doe');
SELECT * FROM temp_a; /* Midoriya */

--Creating a function with composite return--
CREATE FUNCTION pl_create_fake_instructor() RETURNS temp_instructor AS $$ 
    BEGIN
        RETURN ROW (22, 'Fake name', 200::DECIMAL)::temp_instructor;
    END;    
$$ LANGUAGE plpgsql;

--Another way of make this function--
CREATE FUNCTION pl_create_fake_instructor() RETURNS temp_instructor AS $$ 
    DECLARE
        fake temp_instructor;
    BEGIN
        SELECT 22, 'John Doe', 200::DECIMAL INTO fake;
        
        RETURN fake;
    END;    
$$ LANGUAGE plpgsql;


--Querying this function--
SELECT id, "name", salary FROM pl_create_fake_instructor(); /* 22   John Doe   200 */

--Creating a function that returns a set--
CREATE FUNCTION pl_well_paid_instructors(salary_value DECIMAL) RETURNS SETOF temp_instructor AS $$ 
    BEGIN
       RETURN QUERY SELECT * FROM temp_instructor WHERE salary > salary_value; 
    END    
$$ LANGUAGE plpgsql;

--Querying this function--
SELECT * FROM pl_well_paid_instructors(700); /*
                                              * 8   Vlad King   800
                                              * 9   Gran Torino 900
                                              */


