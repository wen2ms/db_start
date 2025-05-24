EXPLAIN SELECT * FROM user WHERE profession = '软件工程' AND age = 31 AND status = '0';

EXPLAIN SELECT * FROM user WHERE age = 31 AND status = '0';

-- status index doesn't work
EXPLAIN SELECT * FROM user WHERE profession = '软件工程' AND status = '0';

EXPLAIN SELECT * FROM user WHERE status = '0' AND profession = '软件工程' AND age = 31;

EXPLAIN SELECT * FROM user WHERE profession = '软件工程' AND age > 30 AND status = '0';

EXPLAIN SELECT * FROM user WHERE profession = '软件工程' AND age >= 30 AND status = '0';