create or replace trigger emp_dept_insert
instead of insert on empdata
for each row
declare
 v_did number;
begin
select deptid into v_did from tbl_departments where lower(deptname)=lower(:NEW.deptname);
 if inserting then
	insert into tbl_employees values(:NEW.empid, :NEW.lastname, :NEW.salary,v_did);
 end if;
end;
/