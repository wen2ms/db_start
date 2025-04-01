-- CREATE USER 'test_user'@'%' IDENTIFIED BY '123456';

CREATE USER 'test_user'@'localhost' IDENTIFIED BY '123456';

ALTER USER 'test_user'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'abcdefg';

DROP USER 'test_user'@'localhost';

SHOW GRANTS FOR 'test_user'@'localhost'

GRANT ALL PRIVILEGES ON test.employee TO 'test_user'@'localhost';

REVOKE ALL PRIVILEGES ON test.employee FROM 'test_user'@'localhost';