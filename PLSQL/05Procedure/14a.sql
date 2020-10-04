--procedure parameterized

create or replace procedure add_dept
(p_did IN departments.department_id%TYPE,
p_dname IN departments.department_name%TYPE,
p_min IN departments.manager_id%TYPE,
p_lid IN departments.location_id%TYPE)
IS

BEGIN
 INSERT INTO departments VALUES (p_did, p_dname, p_mid, p_lid);
 dbms_output.put_line('Department added.');
END;
/
