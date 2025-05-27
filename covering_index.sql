SHOW INDEX FROM user;

DROP INDEX idx_user_age ON user;

DROP INDEX idx_user_email ON user;

DROP INDEX idx_user_profession ON user;

EXPLAIN SELECT id, profession, age FROM user WHERE profession = '软件工程' AND age > 31;

EXPLAIN SELECT id, profession, age, name FROM user WHERE profession = '软件工程' AND age > 31;