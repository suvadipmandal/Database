--Function
CREATE OR REPLACE FUNCTION get_tax_amount(p_salary number) RETURN NUMBER IS
BEGIN
 return (p_salary * 10 / 100);
END;
/

select fast_name, last_name, salary, get_tax_amount(salary) from employees;

select fast_name, last_name, salary - get_tax_amount(salary) as 
Inhandsalary from employees;
