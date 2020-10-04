--overloaded package

create or replace package manage_employees is
 procedure add_emp(p_id number, p_name varchar2);
 procedure add_emp(p_id number, p_name varchar2, p_salary number);
 procedure add_emp(p_id number, p_name varchar2, p_salary number, p_dept number);
END manage_employees;
/

create or replace package body manage_employees is
 procedure add_emp(p_id number, p_name varchar2) is
BEGIN
	dbms_output.put_line('Employee Added : 1');
END add_emp;

 procedure add_emp(p_id number, p_name varchar2, p_salary number) is
BEGIN
	dbms_output.put_line('Employee Added : 2');
END add_emp;

 procedure add_emp(p_id number, p_name varchar2, p_salary number, p_dept number) is
BEGIN
	dbms_output.put_line('Employee Added : 3');
END add_emp;
END;
/