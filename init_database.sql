use master
go 

-- check the existence of database whether or not it've already existed
-- if so, we will drop it and create another one
if exists (
	select 1
	from sys.databases
	where name like 'Group4'
)
BEGIN
	alter database Group4 set single_user with rollback immediate
	drop database Group4
END
GO

-- create database 
CREATE DATABASE Group4
GO

USE Group4
Go
