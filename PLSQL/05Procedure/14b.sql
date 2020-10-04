CREATE OR REPLACE PROCEDURE add_dept
(
p_did IN departments.department_id%TYPE,
p_dname OUT departmentsdepartment_name%TYPE
)
IS
BEGIN
	SELECT department_name
	INTO p_dname
	FROM departments
	WHERE department_id = p_did;
END;
/

declare
 dname varchar(20);
begin
 add_dept(500,dname);
 dbms_output.put_line(dname);
end;
/


