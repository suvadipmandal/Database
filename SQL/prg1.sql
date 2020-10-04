declare
no1 number(4);
no2 number(4);
big number(4);
begin
no1:=&no1;
no2:=&no2;
if no1>=no2 then
big:=no1;
else
big:=no2;
end if;
dbms_output.put_line('biggest value='||big);
end;
/