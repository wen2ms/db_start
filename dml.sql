ALTER TABLE emp RENAME TO employee;

INSERT INTO employee(id, empolyee_id, name, gender, age, card_id, entry_time)
VALUES (1, '1', 'Sam', 'F', 10, '1234567', '2000-01-01');

SELECT * FROM employee;

INSERT INTO employee VALUES (2, '2', 'CHI', 'F', 10, '1234567', '2000-01-01');

INSERT INTO employee VALUES (3, '3', 'Fel', 'F', 10, '1234567', '2000-01-01'),
(4, '4', 'Mis', 'F', 10, '1234567', '2000-01-01');

UPDATE employee SET name = 'Chi' WHERE id = 2;

UPDATE employee SET name = 'Zhao', gender = 'M' WHERE id = 2;

UPDATE employee SET entry_time = '2018-01-01';

DELETE FROM employee WHERE gender = 'F';

DELETE FROM employee;