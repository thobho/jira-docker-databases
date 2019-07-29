CREATE USER 'user'@'%' IDENTIFIED BY 'password';
CREATE DATABASE jiradb CHARACTER SET utf8 COLLATE utf8_bin;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER,INDEX on jiradb.* TO 'user'@'%' IDENTIFIED BY 'password';
flush privileges;