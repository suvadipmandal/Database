/*
Parameterized cursors
For Update clause
where current of clause
*/
DECLARE
 v_empno employees.employee_id%TYPE;
 v_ename employees.last_name%TYPE;
 CURSOR emp_cursor(p_did NUMBER) IS
 FROM employees
 WHERE department_id=p_did;

BEGIN
 OPEN emp_cursor(10);
 LOOP
	FETCH emp_cursor into v_empno, v_ename;
	EXIT WHEN emp_cursor%ROWCOUNT > 10 or emp_cursor%NOTFOUND;
	dbms_output.put_line(v_empno || ':' || v_ename);
 END LOOP;
 CLOSE emp_cursor;
 dbms_output.put_line('----------------------------------');

 OPEN emp_cursor(20);
 LOOP
	FETCT emp_cursor into v_empno, v_ename;
	EXIT WHEN emp_cursor%ROWCOUNT > 10 or emp_cursor%NOTFOUND;
	dbms_output.put_line(v_empno || ':' || v_ename);
 END LOOP
 CLOSE emp_cursor;
 dbms_output.put_line('-----------------------------------');
END;
/