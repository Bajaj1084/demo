CREATE OR REPLACE PROCEDURE insert_data_example(tbl_name STRING, col1_value STRING, col2_value STRING)
RETURNS STRING
LANGUAGE SQL
AS 
$$
BEGIN
    EXECUTE IMMEDIATE 
        'INSERT INTO ' || tbl_name || 
        ' VALUES (''' || col1_value || ''', ''' || col2_value || ''')';
    RETURN 'Row inserted successfully!';
END;
$$;


CALL insert_data_example("GIT_INT.DEMO_V3.HELLO_WORLD", "ABC", "XYZ");

