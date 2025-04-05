CREATE TABLE account(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10),
	money INT
);

INSERT INTO account(name, money) VALUES ('张三', 2000), ('李四', 2000);

DROP TABLE account;

SELECT @@autocommit; 

SET @@autocommit = 0;

SELECT money FROM account WHERE name = '张三';

UPDATE account SET money = money - 1000 WHERE name = '张三';
exception...
UPDATE account SET money = money + 1000 WHERE name = '李四';

ROLLBACK;

COMMIT;

SET @@autocommit = 1;

START TRANSACTION;

SELECT money FROM account WHERE name = '张三';

UPDATE account SET money = money - 1000 WHERE name = '张三';
exception...
UPDATE account SET money = money + 1000 WHERE name = '李四';

ROLLBACK;