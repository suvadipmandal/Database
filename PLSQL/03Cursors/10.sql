--Explicit cursor
/*
Declare
Open
Fetch
Close
*/

declare
 v_empno employees.employee_id%TYPE;
 v_ename employees.last_name%TYPE;
 CURSOR emp_cursor IS
	SELECT employee_id, last_name from employees;

BEGIN
 OPEN emp_cursor;
 LOOP
	FETCH emp_cursor into (v_empno, v_ename);
	EXIT WHEN emp_cursor%ROWCOUNT > 10 or emp_cursor%NOTFOUND;
	dbms_output.put_line(v_empno || ':' || v_ename);
 END LOOP;
 CLOSE emp_cursor;
END; 
/