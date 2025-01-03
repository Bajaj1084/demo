CREATE OR REPLACE PROCEDURE example_procedure()
RETURNS STRING
LANGUAGE SQL
AS 
$$
BEGIN
    RETURN 'Hello, this is a basic procedure!';
END;
$$;
