--TRIGGER
--There are two types of triggers:
--1-DDL Trigger
--2-DML Trigger

/*
DDL Triggers
The DDL triggers are fired in response to DDL (Data Definition Language) command events that start with Create, Alter and Drop, such as Create_table, Create_view, drop_table, Drop_view and Alter_table.
*/
create trigger blockOps
on database
for
create_table , drop_table,alter_table         
as
print 'you can not create table , alter table or drop table in this database' --when you create,drop or alter table in database. you will get this error
rollback;

--DML Triggers
--The DML triggers are fired in response to DML (Data Manipulation Language) command events that start with Insert, Update, and Delete. Like insert_table, Update_view and Delete_table.

create trigger blockOps
on Products
for
insert,delete,update
as
print 'you can not insert, delete or update table in this table' --When we insert, update or delete in a table in a database then the following message appears,
rollback;

--There are two types of DML triggers

/*After Trigger
AFTER triggers are executed after the action of an INSERT, UPDATE, or DELETE statement.
for example
*/
create trigger trg_insertOrder
	on [Order Details]
		after insert
as
	declare @howmany int;,
	@whichProduct int;
		select @whichProduct = ProductID , @howmany = Quantity from inserted
			update Products
				set UnitsInStock = UnitsInStock - @howmany
					where ProductID = @whichProduct

	
