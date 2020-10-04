/* 
Application Trigger(UI application)
Database Tigger
DDL Trigger
DML Trigger
*/
create or replace trigger emp_insert
after insert on employees
begin
 dbms_output.put_line('Record Inserted.');
END;
/