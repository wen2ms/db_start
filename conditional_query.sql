SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age = 88;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age < 20;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age <= 20;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE card_id IS NULL;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE card_id IS NOT NULL;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age != 88;
SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age <> 88;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age >= 15 && age <= 20;
SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age >= 15 AND age <= 20;
SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age BETWEEN 15 AND 20;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE gender = '女' AND age < 25;

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age = 18 OR age = 20 OR age =40;
SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE age IN (18, 20, 40);

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE name LIKE '__';

SELECT id,employee_id,name,gender,age,card_id,work_address,entry_date FROM employee WHERE card_id LIKE '%X';