SHOW TABLES;

CREATE TABLE user(
	id INT,
	name VARCHAR(50),
	age INT,
	gender VARCHAR(1) 
);

DESC user;

SHOW CREATE TABLE user;

ALTER TABLE employee ADD nickname VARCHAR(20);

-- ALTER TABLE employee MODIFY nickname VARCHAR(30);
ALTER TABLE employee CHANGE nickname username VARCHAR(30);

ALTER TABLE employee DROP username;

ALTER TABLE employee RENAME TO emp;

DROP TABLE IF EXISTS user;

TRUNCATE TABLE emp;