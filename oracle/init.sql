CREATE USER jirauser IDENTIFIED BY password;

grant connect to jirauser;
grant create table to jirauser;
grant create sequence to jirauser;
grant create trigger to jirauser;