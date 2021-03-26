DROP DATABASE IF EXISTS anytask;
CREATE DATABASE anytask CHARSET UTF8;

DROP DATABASE IF EXISTS anytask_rb;
CREATE DATABASE anytask_rb CHARSET UTF8;

DROP USER IF EXISTS 'anytask'@'localhost';
-- maintain password in settings_local.py too
CREATE USER 'anytask'@'localhost' IDENTIFIED BY 'P@ssw0rd';

GRANT ALL ON anytask.* TO 'anytask'@'localhost';
GRANT ALL ON anytask_rb.* TO 'anytask'@'localhost';

-- for pt-table-sync to work correctly
GRANT REPLICATION CLIENT ON *.* TO 'anytask'@'localhost';
SET GLOBAL binlog_format = 'STATEMENT';
--


