DECLARE
 CURSOR emp_cursor IS
 select employee_id, last_name, salary
 from employees
 where department_id = 50
 for UPDATE OF salary NOWAIT;

BEGIN
 UPDATE employees SET salary = salary + 10 WHERE department_id =50;
END;
/