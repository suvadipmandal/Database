declear
record employees%ROWTYPE;
begin
select * into record from employees
where employee_id=100;
dbms_output.put_line(record.first_name || '|' || record.last_name || '|' || record.salary);
end;
/