--First select database
use insankaynaklari

--The following SQL statement selects the "employee_id" and "first_name" columns from the "employees" table:

select employee_id,
first_name
from employees

/*The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.*/
--example without distinct
select department_id 
from employees

--with distinct

select distinct department_id 
from employees

--The WHERE clause is used to filter records.
--It is used to extract only those records that fulfill a specified condition.

select * 
from jobs
where job_id between 5 and 9      --its gonna show between 5 and 9 job_id

/*The WHERE clause can be combined with AND and OR operators.  
The AND and OR operators are used to filter records based on more than one condition

***AND***
:  The AND operator displays a record if all the conditions separated by AND are TRUE.
example
*/

select * 
from employees
where (manager_id = 100)
and
(department_id = 9)

/*
***OR***
The OR operator displays a record if any of the conditions separated by OR is TRUE.
example
*/

select * 
from employees
where (job_id = 4) 
or
(department_id = 6)

/*
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
*/
--example with asc
select*
from countries
order by country_name asc
--example with desc
select * 
from countries
order by region_id desc

/* The AS command is used to rename a column or table with an alias.
An alias only exists for the duration of the query.
*/
--example
select email as [e-mail adress]
from employees

--Return the year part of a date
--example
select year(hire_date) 
from employees

--Return the difference between two date values, in years:
--example
select datediff(year,hire_date,GETDATE())   --The GETDATE() function returns the current database system date and time
from employees

--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
--example
select *
from employees
where first_name like 'A%'    --their name start with "A"

--The COUNT() function returns the number of rows that matches a specified criterion.
select count(*)
from jobs

--The AVG() function returns the average value of a numeric column. 
select
avg(min_salary)
from jobs

--The SUM() function returns the total sum of a numeric column. 
select 
sum(max_salary)
from jobs

--The GROUP BY statement groups rows that have the same values into summary rows
select country_id,
count(*)
from locations
group by country_id

--The MIN() function returns the smallest value of the selected column.
select
min(location_id)
from departments

--The MAX() function returns the largest value of the selected column.
select
max(location_id)
from departments