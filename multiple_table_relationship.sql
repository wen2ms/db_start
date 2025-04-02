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

INSERT INTO courses(id, name) VALUES (NULL, 'Java'), (NULL, 'PHP'), (NULL , 'MySQL'), (NULL, 'Hadoop');

CREATE TABLE student_course(
	id INT AUTO_INCREMENT PRIMARY KEY,
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	CONSTRAINT foreign_key_student_id FOREIGN KEY (student_id) REFERENCES student(id),
	CONSTRAINT foreign_key_course_id FOREIGN KEY (course_id) REFERENCES course(id)
);

INSERT INTO student_course(id, student_id, course_id) VALUES (NULL, 1, 1), (NULL, 1, 2), (NULL, 1, 3),
(NULL, 2, 2), (NULL, 2, 3), (NULL, 3, 4);

CREATE TABLE taobao_user(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10),
	age INT,
	gender CHAR(1),
	phone CHAR(11)
);

CREATE TABLE taobao_user_education(
	id INT AUTO_INCREMENT PRIMARY KEY,
	degree VARCHAR(20),
	major VARCHAR(50),
	primary_school VARCHAR(50),
	middel_school VARCHAR(50),
	university VARCHAR(50),
	user_id INT UNIQUE,
	CONSTRAINT foreign_key_user_id FOREIGN KEY (user_id) REFERENCES taobao_user(id)
);

INSERT INTO taobao_user(id, name, age, gender, phone) VALUES
(NULL, '黄渤', 45, '1', '18800001111'),
(NULL, '冰冰', 35, '2', '18800002222'),
(NULL, '码云', 55, '1', '18800008888'),
(NULL, '李彦宏', 50, '1', '18800009999');

INSERT INTO taobao_user_education(id, degree, major, primary_school, middel_school,
university, user_id) VALUES
(NULL, '本科', '舞蹈', '静安区第一小学', '静安区第一中学', '北京舞蹈学院', 1),
(NULL, '硕士', '表演', '朝阳区第一小学', '朝阳区第一中学', '北京电影学院', 2),
(NULL, '本科', '英语', '杭州市第一小学', '杭州市第一中学', '杭州师范大学', 3),
(NULL, '本科', '应用数学', '阳泉第一小学', '阳泉区第一中学', '清华大学', 4);