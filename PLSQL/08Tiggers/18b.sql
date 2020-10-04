create or replace trigger restricated_dml
before insert or update or delete on employees
begin
 if (to_char(sysdate,'HH24:MI') not between '09:00' and '18:00') then
	raise_application_error(-20124,'You can manipulate employee only between 09:00 AM and 06:00 PM.');
 end if;
end;
/