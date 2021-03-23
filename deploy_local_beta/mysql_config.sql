DROP DATABASE IF EXISTS anytask_mysql_db;
CREATE DATABASE anytask_mysql_db CHARSET UTF8;

DROP USER IF EXISTS anytask_mysql_user;
CREATE USER anytask_mysql_user IDENTIFIED BY 'anytask_mysql_pass';

GRANT ALL ON anytask_mysql_db.* TO anytask_mysql_user;
