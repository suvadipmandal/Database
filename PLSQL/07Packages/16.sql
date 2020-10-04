--packages

/*
divided in two parts
i) Specification 
ii)Body
*/

--Specification
CREATE OR REPLACE PACKAGE manage_employees IS
 PROCEDURE add_emp(p_id NUMBER, p_name VARCHAR2);
 PROCEDURE edit_emp(p_id NUMBER, p_name VARCHAR2);
END manage_employees;
/

--body
CREATE OR REPLACE PACKAGE BODY manage_employees IS
 PROCEDURE add_emp(p_id NUMBER, p_name VARCHAR2) IS
BEGIN
	dbms_output.put_line('Employee Added');
END add_emp;
 PROCEDURE edit_emp(p_id NUMBER, p_name VARCHAR2) IS
BEGIN
	dbms_output.put_line('Employee Updated');
END edit_emp;
END;
/

--execute manage_employees.add_emp(101,'Suvadip');