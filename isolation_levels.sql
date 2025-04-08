SELECT @@TRANSACTION_ISOLATION;

SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- 1. Dirty Read

-- ConsoleA
-- SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- SELECT * FROM account;
-- START TRANSACTION;

-- ConsoleB
-- START TRANSACTION;
-- UPDATE account SET money = money + 1000 WHERE name = '张三';

-- ConsoleA
-- SELECT * FROM account;

-- ConsoleA, ConsoleB
-- ROLLBACK

-- 2. Non-repeatable Read

-- ConsoleA
-- SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- SELECT * FROM account;
-- START TRANSACTION;

-- ConsoleB
-- START TRANSACTION;
-- UPDATE account SET money = money + 1000 WHERE name = '张三';
-- COMMIT;

-- ConsoleA
-- SELECT * FROM account;

-- ConsoleA
-- COMMIT;

-- 3. Phantom Read
