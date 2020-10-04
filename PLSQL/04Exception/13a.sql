--Explicit Exception

DECLARE
 v_lastname employees.last_name%TYPE;
 v_salary employees.salary%TYPE;
 e_invalid_dept EXCEPTION;
BEGIN
 UPDATE employees
 SET salary = salary + 200
 WHERE department_id = 200;

 IF SQL%NOTFOUND THEN
	RAISE e_invalid_dept;
 END IF;
 COMMIT;

EXCEPTION
 WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('No Records');
 WHEN TOO_MANY_ROWS THEN
	dbms_output.put_line('More than 1 records found');
 WHEN e_invalid_dept THEN
	dbms_output.put_line('Not Such DEpartment Exists');
 WHEN OTHERS THEN
	dbms_output.put_line('Some error found');
END;
/