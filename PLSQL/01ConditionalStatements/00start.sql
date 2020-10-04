declare
input number(3);
i number(2);
create table employees
(
fast_name varchar2(10),
last_name varchar2(10),
employee_id number(3),
salary number(5,2),
department_id char(3)
);
begin
--create database
/*
drop table employees;
dbms_output.put_line('Drop table Sucessful');
*/

dbms_output.put_line('Table create sucessful');

dbms_output.put_line('How many data you entry :');
input :=&data;
 for i in 1..input loop
	dbms_output.put_line('Enter your data :');
	insert into employees values(&fast_name,&last_name,&employee_id,&salary,&department_id);
 end loop;
end;
/
