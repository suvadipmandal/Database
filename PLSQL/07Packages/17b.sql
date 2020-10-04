create or replace package manage_employees is
 procedure add_emp(p_id number, p_name varchar2);
 procedure edit_emp(p_id number, p_name varchar2);
end manage_employees;
/

create or replace package body manage_employees is
 procedure search_emp(p_id number);
 procedure add_emp(p_id number, p_name varchar2) is
begin
	dbms_output.put_line('Employee Added');
end add_emp;

 procedure edit_emp(p_id number, p_name varchar2) is
begin
	search_emp(p_id);
	dbms_output.put_line('Employee Updated');
end edit_emp;
 procedure search_emp(p_id number) is
begin
	dbms_output.put_line('Employee Found');
end search_emp;
end;
/