--DML (Data Manipulating Language)
--INSERT
--The INSERT statement is used to insert new records in a table.
insert employees
(first_name,last_name,email,hire_date,job_id,salary)
values
('Goktug','GUDE','ggude@gmail.com',GETDATE(),3,100000)

--UPDATE
--The UPDATE statement is used to modify the existing records in a table.
update employees
set salary = 200000
where first_name = 'Goktug'

--DELETE
--The DELETE statement is used to delete existing records in a table.
delete employees 
where first_name ='Goktug'
