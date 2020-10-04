--login trigger

create or replace trigger login_trigger
after logon on schema
begin
 insert into  login_details values(user,sysdate,'login');
end;
/

create or replace trigger logoff_trigger
before logoff on schema
begin
 insert into login_details values(user,sysdate,'logout');
end;
/


/*
create or replace trigger login_trigger
after logon on schema
begin
 insert into  login_details values(user,to_char(SYSDATE,'dd-mm-yyy hh24:mi:ss'),'login');
end;
/

create or replace trigger logoff_trigger
before logoff on schema
begin
 insert into login_details values(user,to_char(SYSDATE,'dd-mm-yyy hh24:mi:ss'),'logout');
end;
/
*/