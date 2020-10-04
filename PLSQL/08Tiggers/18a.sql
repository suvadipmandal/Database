CREATE OR REPLACE TRIGGER restricated_insert
BEFORE INSERT ON employees
begin
 if (to_char(sysdate,'HH24:MI') not between '09:00' and '18:00') then
 RAISE_APPLICATION_ERROR(-20123,'you can add employee only between 9:-- an and 6:00 pm.');
end if;
end;
/