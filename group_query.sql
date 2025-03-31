-- execution order: WHERE > aggreagte functions > HAVING
-- The query fields after grouping are the grouping fields and aggregate functions, other fields are generally meaningless

SELECT gender, COUNT(*) FROM employee GROUP BY gender;

SELECT gender, AVG(age) FROM employee GROUP BY gender;

SELECT work_address, COUNT(*) AS work_address_count FROM employee WHERE age < 45 GROUP BY work_address HAVING work_address_count >= 3;