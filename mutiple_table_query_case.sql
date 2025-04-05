CREATE TABLE salary_grade(
	grade INT,
	low INT,
	high INT
);

INSERT INTO salary_grade VALUES (1, 0, 3000);
INSERT INTO salary_grade VALUES (2, 3001, 5000);
INSERT INTO salary_grade VALUES (3, 5001, 8000);
INSERT INTO salary_grade VALUES (4, 8001, 10000);
INSERT INTO salary_grade VALUES (5, 10001, 15000);
INSERT INTO salary_grade VALUES (6, 15001, 20000);
INSERT INTO salary_grade VALUES (7, 20001, 25000);
INSERT INTO salary_grade VALUES (8, 25001, 30000);

SELECT emp.name, emp.age, emp.job, dept.name FROM employee emp, department dept WHERE emp.department_id = dept.id;

SELECT emp.name, emp.age, emp.job, dept.name FROM employee emp JOIN department dept
ON emp.department_id = dept.id WHERE emp.age < 30;

SELECT DISTINCT emp.department_id, dept.name FROM employee emp JOIN department dept ON emp.department_id = dept.id;

SELECT sub_emp.*, dept.name FROM (SELECT * FROM employee WHERE age > 40) sub_emp LEFT JOIN department dept
ON sub_emp.department_id = dept.id;

SELECT emp.*, sg.grade FROM employee emp, salary_grade sg WHERE emp.salary >= sg.low AND emp.salary <= sg.high;

SELECT emp.*, sg.grade FROM employee emp, salary_grade sg WHERE emp.salary BETWEEN sg.low AND sg.high;

SELECT emp.*, sg.grade FROM employee emp, salary_grade sg, department dept WHERE emp.salary BETWEEN sg.low AND sg.high
AND emp.department_id = dept.id AND dept.name = '研发部';

SELECT AVG(emp.salary) FROM employee emp, department dept WHERE emp.department_id = dept.id AND dept.name = '研发部';

SELECT * FROM employee WHERE salary > (SELECT salary FROM employee WHERE name = '灭绝');

SELECT * FROM employee WHERE salary > (SELECT AVG(emp.salary) FROM employee emp);

SELECT * FROM employee emp_a WHERE emp_a.salary < 
(SELECT AVG(emp_b.salary) FROM employee emp_b WHERE emp_b.department_id = emp_a.department_id);

SELECT dept.*, (SELECT COUNT(*) FROM employee emp WHERE emp.department_id = dept.id) FROM department dept;

SELECT stu.name, stu.student_id, crs.`name` FROM student stu, course crs, student_course sc
WHERE stu.id = sc.student_id AND crs.id = sc.course_id;