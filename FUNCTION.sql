--User Defined Functions

--SCALER FUNCTIONS
--SQL Server scalar function takes one or more parameters and returns a single value.

go
  create function agecalculator(@Birthdate datetime)
    returns int 
        begin														--Age Calculator function
           return datediff(year,@Birthdate,getdate())
              end
go

--Table-valued Functions
--A table-valued function is a user-defined function that returns data of a table type. The return type of a table-valued function is a table, therefore, you can use the table-valued function just like you would use a table.

go
	create function stockstatus(@lowvalue int,@upvalue int)
		returns table
			return select * 
			from Products
				where UnitsInStock between @lowvalue and @upvalue
go

----Stored Procedure
--Stored Procedures are created to perform one or more DML operations on Database. 

	create procedure sp_GetEmployeeByFullName (@fname nvarchar(20) , @lname nvarchar(20))
as
	begin
		select * 
			from Employees
				where FirstName = @fname and LastName = @lname
					end
