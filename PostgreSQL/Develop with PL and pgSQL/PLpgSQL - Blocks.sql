--Creating a function in plpgsql that manipulates the variable with a block of code--
CREATE FUNCTION fourth_pl() RETURNS INTEGER AS $$ 
    DECLARE
        first_variable INTEGER DEFAULT 3; 
    BEGIN
        first_variable := first_variable * 2;
        
        BEGIN
            first_variable := 7;
        END;
        
        RETURN first_variable;        
    END
$$ LANGUAGE plpgsql;


--Querying this function--
SELECT fourth_pl(); /* 7 */