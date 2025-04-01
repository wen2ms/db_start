CREATE TABLE department(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

INSERT INTO department(id, name) VALUES (1, '研发部'), (2, '市场部'), (3, '财务部'), (4, '销售部'), (5, '总经办');

CREATE TABLE employee(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
job VARCHAR(20),
salary INT,
entry_date DATE,
manager_id INT,
department_id INT
);

INSERT INTO employee (id, name, age, job, salary, entry_date, manager_id, department_id) VALUES
(1, '金庸', 66, '总裁', 20000, '2000-01-01', NULL, 5),
(2, '张无忌', 20, '项目经理', 12500, '2005-12-05', 1, 1),
(3, '杨逍', 33, '开发', 8400,'2000-11-03', 2, 1),
(4, '韦一笑', 48, '开发', 11000, '2002-02-05', 2, 1),
(5, '常遇春', 43, '开发', 10500, '2004-09-07', 3, 1),
(6, '小昭', 19, '程序员鼓励师', 6600, '2004-10-12', 2, 1);

ALTER TABLE employee ADD CONSTRAINT foreign_key_department_id FOREIGN KEY (department_id) REFERENCES department(id);

-- Cannot delete a parent row
-- DELETE FROM department WHERE id = 1;

ALTER TABLE employee DROP FOREIGN KEY foreign_key_department_id;

DELETE FROM department WHERE id = 1;