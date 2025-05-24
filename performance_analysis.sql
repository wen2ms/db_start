SHOW GLOBAL STATUS LIKE 'Com_______';

SELECT * FROM user;

SHOW VARIABLES LIKE 'slow_query_log';

SHOW VARIABLES LIKE 'slow_query_log_file';

SELECT * FROM user;

SELECT @@have_profiling;

SELECT @@profiling;

SET profiling = 1;

SELECT * FROM user WHERE id = 1;

SELECT * FROM user WHERE age > 25;

SELECT * FROM user WHERE name = '吕布';

SHOW PROFILES;

-- SHOW PROFILE cpu FOR QUERY 5;
SHOW PROFILE FOR QUERY 5;

EXPLAIN SELECT * FROM user WHERE name = '吕布';

CREATE TABLE student(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10),
	student_id VARCHAR(10)
);

INSERT INTO student(id, name, student_id) VALUES (NULL, '黛绮丝', '2000100101'), (NULL, '谢逊', '2000100102'),
(NULL, '殷天正', '2000100103'), (NULL, '韦一笑', '2000100104');

CREATE TABLE course(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10)
);

INSERT INTO course(id, name) VALUES (NULL, 'Java'), (NULL, 'PHP'), (NULL , 'MySQL'), (NULL, 'Hadoop');

CREATE TABLE student_course(
	id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	CONSTRAINT foreign_key_student_id FOREIGN KEY (student_id) REFERENCES student(id),
	CONSTRAINT foreign_key_course_id FOREIGN KEY (course_id) REFERENCES course(id)
);

INSERT INTO student_course(id, student_id, course_id) VALUES (NULL, 1, 1), (NULL, 1, 2), (NULL, 1, 3),
(NULL, 2, 2), (NULL, 2, 3), (NULL, 3, 4);

SELECT stu.*, crs.* FROM student stu, course crs, student_course stu_crs 
WHERE stu.id = stu_crs.student_id AND crs.id = stu_crs.course_id;

EXPLAIN SELECT stu.*, crs.* FROM student stu, course crs, student_course stu_crs 
WHERE stu.id = stu_crs.student_id AND crs.id = stu_crs.course_id;

EXPLAIN SELECT * FROM student stu WHERE stu.id
IN (SELECT student_id FROM student_course stu_crs
WHERE stu_crs.course_id = (SELECT id FROM course crs WHERE crs.name = 'MySQL'));

EXPLAIN SELECT * FROM user WHERE id = 1;

SHOW INDEX FROM user;

EXPLAIN SELECT * FROM user WHERE phone = '17799990012';