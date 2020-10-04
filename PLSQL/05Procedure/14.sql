--procedure

/* IN parameter (default)
OUT parameter
IN OUT parameter
*/

CREATE OR REPLACE PROCEDURE test_procedure IS
BEGIN
   dbms_output.put_line('Test procedure executed successfully.');
END;
/

--execute test_procedure
