declare
name varchar2(10);
sal number(10,2);
begin
select first_name, salary into name,sal from employees
where employee_id=100;
dbms_output.put_line('Name :'||name);
dbms_output.put_line('Salary :'||sal);
end;
/