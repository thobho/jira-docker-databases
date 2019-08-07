EXEC sys.sp_configure N'remote access', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO
CREATE SCHEMA jiraschema;
GO
CREATE DATABASE jiradb COLLATE SQL_Latin1_General_CP1_CS_AS;
GO