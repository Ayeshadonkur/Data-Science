1.create or replace function add_numbers(p_num1 NUMBER,p_num2 NUMBER) RETURN number is
begin
    return p_num1 + p_num2;
END;

2.create or replace function subtract_numbers(p_num1 NUMBER,p_num2 NUMBER)RETURN number is
BEGIN
    return p_num1 - p_num2;
end;

3.create or replace function multiply_numbers(p_num1 NUMBER,p_num2 NUMBER)RETURN number is
BEGIN
    return p_num1*p_num2;
end;

4.create or replace function divide_numbers(p_num1 NUMBER,p_num2 NUMBER)RETURN number is
BEGIN
   if p_num2=0 THEN
     return NULL;
     ELSE
     return p_num1/p_num2;
   end if;
end;

5.create or replace function power_numbers(p_base NUMBER,p_exponent NUMBER)RETURN number is
BEGIN
    return p_base*p_exponent;
end;

6.create or replace function MAX_numbers(p_num1 NUMBER,p_num2 NUMBER)RETURN number is
BEGIN
    return GREATEST(P_num1,p_num2);
end;


7.create or replace function MIN_numbers(p_num1 NUMBER,p_num2 NUMBER)RETURN number is
BEGIN
    return LEAST(p_num1,p_num2);
end;

8.create or replace function square_number(p_num NUMBER)RETURN number is
BEGIN
    return 5*5;
end;

9.CREATE OR REPLACE FUNCTION factorial(p_num NUMBER) RETURN NUMBER IS
BEGIN
  IF p_num = 0 OR p_num = 1 THEN
    RETURN 1;
  ELSE
    RETURN p_num * factorial(p_num - 1);
  END IF;
END;

10.create or replace function is_even(p_num NUMBER)RETURN varchar2 is
BEGIN
    if mod(p_num,2)=0 THEN
     return 'YES';
    else 
     return'NO';
    END IF;
END;

11.create or replace function is_dd(p_num NUMBER)RETURN varchar2 is
BEGIN
    if mod(p_num,2)<>0 THEN
     return 'YES';
    else 
     return'NO';
    END IF;
END;

12.CREATE OR REPLACE FUNCTION reverse_string(p_str VARCHAR2) RETURN VARCHAR2 IS
BEGIN
  RETURN REVERSE(p_str);
END;

13. CREATE OR REPLACE FUNCTION string_length(p_str VARCHAR2) RETURN NUMBER IS
BEGIN
  RETURN LENGTH(p_str);
END;
