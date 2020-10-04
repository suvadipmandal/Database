create or replace trigger restrict_drop_table
before drop on database
begin
 raise_application_error(-20124,'Cannot drop table from this database');
end;
/