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