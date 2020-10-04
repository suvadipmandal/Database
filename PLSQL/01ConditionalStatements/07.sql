declare
 num number(1) := &weekday;
 dayname varchar2(10);
begin
 dayname := Case num
	when 1 then 'Monday'
	when 2 then 'Tuesday'
	when 3 then 'Wednesday'
	else 'Sunday'
 end;
 dbms_output.put_line(dayname);
end;
/