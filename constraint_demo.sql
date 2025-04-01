CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL UNIQUE,
	age INT CHECK (age > 0 AND age <= 120),
	status CHAR(1) DEFAULT '1',
	gender CHAR(1)
);

INSERT INTO user(name, age, status, gender) VALUES ('Tom1', 19, '1', '男'), ('Tom2', 25, '0', '男');

INSERT INTO user(name, age, gender) VALUES ('Tom3', 19, '男');

INSERT INTO user(name, age, gender) VALUES ('Tom4', 80, '男');

INSERT INTO user(name, age, gender) VALUES ('Tom5', -1, '男');