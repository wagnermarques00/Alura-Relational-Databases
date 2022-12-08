--Creating a function in plpgsql--
CREATE FUNCTION first_pl() RETURNS INTEGER AS $$ 
    BEGIN
        RETURN 1;        
    END
$$ LANGUAGE plpgsql;

--Querying this function--
SELECT first_pl();