-- SELECT * FROM employee WHERE gender = '女' AND age BETWEEN 20 AND 23;
SELECT * FROM employee WHERE gender = '女' AND age IN (20, 21, 22, 23);

SELECT * FROM employee WHERE gender = '男' AND age BETWEEN 20 AND 40 AND name LIKE '___';

SELECT gender, COUNT(*) FROM employee WHERE age < 60 GROUP BY gender;

SELECT name, age FROM employee WHERE age <= 35 ORDER BY age, entry_date DESC;

SELECT * FROM employee WHERE gender = '男' AND age BETWEEN 20 AND 40 ORDER BY age, entry_date LIMIT 5;