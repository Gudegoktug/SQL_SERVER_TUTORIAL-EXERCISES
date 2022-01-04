--***JOIN***
--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

--for combine rows from two tables
select *
from Employees e
join jobs j on e.job_id = j.job_id


--for combine rows from three tables
select *
from Employees e
join jobs j on e.job_id = j.job_id
join dependents d on d.employee_id = e.employee_id

--The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
--The result is 0 records from the right side, if there is no match.

select CompanyName , OrderId
from Customers
left join Orders on Orders.CustomerId = Customer.CustomerId                --in this code, its showing it which customers dont order.
where OrderId is null                                              
                                                                             
--The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
--The result is 0 records from the left side, if there is no match.

select CompanyName , OrderId
from Orders
right join Customers on Orders.CustomerId = Customer.CustomerId                --in this code, its showing it which customers dont order.
where OrderId is null       
