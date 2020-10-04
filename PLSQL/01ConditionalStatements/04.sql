declare
name employees.first_name%TYPE;
sal employees.salary%TYPE;
begin
select first_name, salary into name, sal from employees
where employee_id = 100;
dbms_output.put_line('Name :'||name);
dbms_output.put_line('Salary :'||sal);
end;
/