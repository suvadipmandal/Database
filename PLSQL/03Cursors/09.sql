--implecit cursor
/*
%ROWCOUNT
%FOUND
%NOTFOUND
%ISFOUND
*/

declare
 cnt number(3);
begin
 update employees set salary = salary + 2 where department_id = 20;
 cnt := SQL%RowCount;
 dbms_output.put_line(cnt || 'Rows updated');
end;
/