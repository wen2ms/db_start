SELECT IF(FALSE, 'Successfully', 'Failed');

SELECT IFNULL('', 'IS NULL');

SELECT IFNULL(NULL, 'IS NULL');

SELECT name,
			 (CASE work_address WHEN '北京' THEN '一线城市' WHEN '上海' THEN '一线城市' ELSE '二线城市' END) AS 'work_address_category'
FROM employee;

CREATE TABLE score(
  id INT,
	name VARCHAR(20),
	math INT,
	english INT,
	chinese INT
);

INSERT INTO score(id, name, math, english, chinese) VALUES (1, 'Tom', 67, 88, 95), (2, 'Rose' , 23, 66, 90), (3, 'Jack', 56, 98, 76);

SELECT id, name, (CASE WHEN math >= 85 THEN '优秀' WHEN math >= 60 THEN '及格' ELSE '不及格' END) AS 'math_rank',
(CASE WHEN english >= 85 THEN '优秀' WHEN english >= 60 THEN '及格' ELSE '不及格' END) AS 'english_rank',
(CASE WHEN chinese >= 85 THEN '优秀' WHEN chinese >= 60 THEN '及格' ELSE '不及格' END) AS 'chinese_rank' FROM score;
