-- 1. Simple SELECT INTO Statement
-- DECLARE
--   employee_name VARCHAR2(100);
-- BEGIN
--   select first_name into employee_name from hr.EMPLOYEES where employee_id=101;
--   dbms_output.put_line(employee_name);
-- END;

-- 2. SELECT Multiple Columns INTO Variables
-- DECLARE
--      emp_name VARCHAR2(100);
--      emp_salary NUMBER;
-- BEGIN
--      select first_name,salary into emp_name,emp_salary from HR.EMPLOYEES where employee_id=102;
--      dbms_output.put_line(emp_name||emp_salary);
-- END;

-- 3. Handling No Data Found Exception
-- DECLARE
--     emp_salary NUMBER;
-- BEGIN
--     BEGIN
--         SELECT salary INTO emp_salary FROM hr.employees WHERE employee_id = 999; -- Non-existing ID
--         DBMS_OUTPUT.PUT_LINE(emp_salary);
--     EXCEPTION
--         WHEN NO_DATA_FOUND THEN
--             DBMS_OUTPUT.PUT_LINE('No employee found with this ID.');
--     END;
-- END;
--/

-- 4. Using SELECT with CASE Statement
-- DECLARE
--     emp_status VARCHAR2(20);
-- BEGIN
--     SELECT 
--         CASE 
--             WHEN salary > 50000 THEN 'High Salary'
--             ELSE 'Low Salary'
--         END 
--     INTO emp_status 
--     FROM HR.employees WHERE employee_id = 103;
--     DBMS_OUTPUT.PUT_LINE(emp_status);
-- END;
-- /

-- 5. Using COUNT() with SELECT INTO
DECLARE
  total_employees NUMBER;
BEGIN
  select count(*) into total_employees from hr.employees;
  dbms_output.put_line(total_employees);
END;
