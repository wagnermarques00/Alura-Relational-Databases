--Creating a function in plpgsql--
CREATE FUNCTION second_pl() RETURNS INTEGER AS $$ 
    DECLARE
        first_variable INTEGER DEFAULT 3; 
    BEGIN
        RETURN first_variable;        
    END
$$ LANGUAGE plpgsql;

--Querying this function--
SELECT second_pl();

--Creating a function in plpgsql that manipulates the variable--
CREATE FUNCTION third_pl() RETURNS INTEGER AS $$ 
    DECLARE
        first_variable INTEGER DEFAULT 3; 
    BEGIN
        first_variable := first_variable * 2;
        
        RETURN first_variable;        
    END
$$ LANGUAGE plpgsql;

--Querying this function--
SELECT third_pl(); /* 6 */