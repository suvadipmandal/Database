create or replace trigger salary_update_check
before update of salary on employees
for each row
begin
 if :NEW.salary < :OLD.salary then
	raise_application_error(-20125,'update salary cannot lesser then current salary');
 end if;
end;
/
