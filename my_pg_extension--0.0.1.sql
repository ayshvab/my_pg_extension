-- my_pg_extension--0.0.1.sql

-- Create the SQL function
CREATE OR REPLACE FUNCTION mem_tableam_handler(internal)
RETURNS table_am_handler AS 'my_pg_extension', 'mem_tableam_handler'
LANGUAGE C STRICT;

CREATE ACCESS METHOD mem TYPE TABLE HANDLER mem_tableam_handler;
