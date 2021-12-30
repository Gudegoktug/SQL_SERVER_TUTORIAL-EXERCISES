--DDL (DATA Definition Language)
--Firstly create database then select your database
--like
--use dbName

--CREATE TABLE
--The CREATE TABLE statement is used to create a new table in a database.
create table gude
(
ýd int identity (1,1) not null,
firstName nvarchar(15) not null,
lastName nvarchar(15) not null,
birthdate datetime null
)


--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
--add Column
--To add a column in a table, use the following syntax:
Alter table gude
add
email nvarchar(30) null

--drop Column
--To delete a column in a table, use the following syntax 
alter table gude 
drop column email

--alter Column
--To change the data type of a column in a table, use the following syntax:

alter table gude
alter column firstName nvarchar(120)