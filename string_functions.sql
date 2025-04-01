SELECT CONCAT('Hello', ' World');

SELECT LOWER('HELLO');

SELECT UPPER('hello');

SELECT LPAD('001', 7, '*');

SELECT RPAD('001', 7, '*');

SELECT TRIM('   **HELLO  WORLD** ');

SELECT SUBSTRING('hello world', 1, 5);

UPDATE employee SET employee_id = LPAD(employee_id, 5, '0');