alter session set "_ORACLE_SCRIPT"=true;
drop user jiradb cascade ;
create user jiradb identified by samolot123 default tablespace "USERS" quota unlimited on "USERS";

grant connect to jiradb;
grant create table to jiradb;
grant create sequence to jiradb;
grant create trigger to jiradb;