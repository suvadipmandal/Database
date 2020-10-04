DECLARE
 CURSOR sal_cursor IS
 select employee_id, last_name, salary
 from employees
 where department_id = 50
 for UPDATE OF salary NOWAIT;

BEGIN
 FOR emp_record IN sal_cursor
 LOOP 
	IF emp_record.salary < 5000 THEN
	UPDATE employees
	SET salary = salary + 500
	WHERE CURRENT OF sal_cursor;
 	END if;
 END LOOP;
END;
/