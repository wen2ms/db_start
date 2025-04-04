CREATE TABLE department(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL
);

INSERT INTO department (id, name) VALUES (1, '研发部'), (2, '市场部'),(3, '财务部'), (4,'销售部'), (5, '总经办'), (6, '人事部');

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

ALTER TABLE employee ADD CONSTRAINT foreign_key_department_id FOREIGN KEY (department_id) REFERENCES department(id);

INSERT INTO employee (id, name, age, job, salary, entry_date, manager_id, department_id) VALUES
(1, '金庸', 66, '总裁', 20000, '2000-01-01', NULL, 5),
(2, '张无忌', 20, '项目经理', 12500, '2005-12-05', 1, 1),
(3, '杨逍', 33, '开发', 8400, '2000-11-03', 2, 1),
(4, '韦一笑', 48, '开发', 11000, '2002-02-05', 2, 1),
(5, '常遇春', 43, '开发', 10500, '2004-09-07', 3, 1),
(6, '小昭', 19, '程序员鼓励师', 6600, '2004-10-12', 2, 1),
(7, '灭绝', 60, '财务总监', 8500, '2002-09-12', 1, 3),
(8, '周芷若', 19, '会计', 4800, '2006-06-02', 7, 3),
(9, '丁敏君', 23, '出纳', 5250, '2009-05-13', 7, 3),
(10, '赵敏', 20, '市场部总监', 12500, '2004-10-12', 1, 2),
(11, '鹿杖客', 56, '职员', 3750, '2006-10-03', 10, 2),
(12, '鹤笔翁', 19, '职员', 3750, '2007-05-09', 10, 2),
(13, '方东白', 19, '职员', 5500, '2009-02-12', 10, 2),
(14, '张三丰', 88, '销售总监', 14000, '2004-10-12', 1, 4),
(15, '俞莲舟', 38, '销售', 4600, '2004-10-12', 14, 4),
(16, '宋远桥', 40, '销售', 4600, '2004-10-12', 14, 4),
(17, '陈友谅', 42, NULL, 2000, '2011-10-12', 1, NULL);

SELECT * FROM employee, department WHERE employee.department_id = department.id ORDER BY employee.id ASC;

SELECT employee.name, department.name FROM employee, department WHERE employee.department_id = department.id;  

SELECT emp.name emp_name, dept.name dept_name FROM employee AS emp, department dept WHERE emp.department_id = dept.id;

SELECT emp.name emp_name, dept.name dept_name FROM employee emp INNER JOIN department dept ON emp.department_id = dept.id;

SELECT emp.name emp_name, dept.name dept_name FROM employee emp JOIN department dept ON emp.department_id = dept.id;

SELECT emp.*, dept.name FROM employee emp LEFT OUTER JOIN department dept ON emp.department_id = dept.id;

SELECT emp.*, dept.name FROM employee emp LEFT JOIN department dept ON emp.department_id = dept.id;

SELECT dept.*, emp.* FROM employee emp RIGHT OUTER JOIN department dept ON emp.department_id = dept.id;

SELECT dept.*, emp.* FROM department dept LEFT OUTER JOIN employee emp ON emp.department_id = dept.id;

SELECT emp.name employee_name, boss.name boss_name FROM employee emp, employee boss WHERE emp.manager_id = boss.id;

SELECT emp.name 'employee_name', boss.name 'boss_name' FROM employee emp LEFT JOIN employee boss
ON emp.manager_id = boss.id;
 
-- The nubmer of columns must remain consistent
SELECT * FROM employee WHERE salary < 5000
UNION ALL
SELECT * FROM employee WHERE age > 50;

SELECT * FROM employee WHERE salary < 5000
UNION
SELECT * FROM employee WHERE age > 50;

SELECT * FROM employee WHERE department_id = (SELECT id FROM department WHERE name = '销售部');

SELECT * FROM employee WHERE entry_date > (SELECT entry_date FROM employee WHERE name = '方东白');

SELECT * FROM employee WHERE department_id IN (SELECT id FROM department WHERE name = '销售部' OR name = '市场部');

SELECT * FROM employee WHERE salary > 
ALL (SELECT salary FROM employee WHERE department_id = (SELECT id FROM department WHERE name = '财务部'));

SELECT * FROM employee WHERE salary >
ANY (SELECT salary FROM employee WHERE department_id = (SELECT id FROM department WHERE name = '研发部'));

SELECT * FROM employee WHERE (salary, manager_id) = (SELECT salary, manager_id FROM employee WHERE name = '张无忌');