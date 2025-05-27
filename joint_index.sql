EXPLAIN SELECT id, phone, name FROM user WHERE phone = '17799990010' AND name = '韩信';

CREATE UNIQUE INDEX idx_user_phone_name ON user(phone, name);

EXPLAIN SELECT id, phone, name FROM user WHERE phone = '17799990010' AND name = '韩信';

EXPLAIN SELECT id, phone, name FROM user USE INDEX(idx_user_phone_name) WHERE phone = '17799990010' AND name = '韩信';