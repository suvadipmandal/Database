declare
i number(3):=1;
begin
loop
exit when i>10;
dbms_output.put_line(i);
i:=i+1;
end loop;
end;
/