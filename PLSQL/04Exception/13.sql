-- implecit Exception

DECLARE
 v_lastname employees.last_name%TYPE;
 v_salary employees.salary%TYPE;

BEGIN
 SELECT last_name, salary
 into v_lastname, v_salary
 from employees
 WHERE employee_id = 300;
 dbms_output.put_line(v_lastname || 'earns' || v_salary);

EXCEPTION
 WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('No Records');
 WHEN TOO_MANY_ROWS THEN
		dbms_output.put_line('More than 1 records found');
 WHEN OTHERS THEN
		dbms_output.put_line('Some error found');
END;
/