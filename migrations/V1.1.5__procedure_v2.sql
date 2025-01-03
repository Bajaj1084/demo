CREATE OR REPLACE PROCEDURE insert_data_example(
    name STRING,
    lname STRING
)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    -- Begin a transaction
    BEGIN TRANSACTION;

    -- Insert data
    INSERT INTO GIT_INT.DEMO_V3.HELLO_WORLD (FIRST_NAME, LAST_NAME)
    VALUES (:name, :lname);

    -- Commit the transaction
    COMMIT;

    RETURN 'Row inserted successfully';
END;
$$;


