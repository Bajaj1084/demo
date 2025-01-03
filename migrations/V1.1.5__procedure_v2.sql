CREATE OR REPLACE PROCEDURE insert_data_example(tbl_name STRING, col1_value VARCHAR, col2_value VARCHAR)
RETURNS STRING
LANGUAGE SQL
AS 
$$
BEGIN
    EXECUTE IMMEDIATE 'INSERT INTO ' || tbl_name || ' VALUES (' || col1_value || ', ''' || col2_value || ''')';
    RETURN 'Row inserted successfully!';
END;
$$;
