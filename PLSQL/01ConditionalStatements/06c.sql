declare
 deptid number(2);
 sal number(10,2);
begin
 select salary, department_id into sal,deptid from employees
 where employee_id=105;
 dbms_output.put_line(sal || ':' || deptid);
 if deptid = 30 then
	sal := sal+3;
 elsif deptid = 60 then
	sal := sal + 6;
 else
	sal := sal + 20;
 end if;
 update employees set salary = sal 
 where employee_id = 105;
 dbms_output.put_line(sal || ':' || deptid);
end;
/