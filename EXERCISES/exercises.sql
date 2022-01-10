use Northwind

--EXERCISES

--1. Retrieve all columns in the Region table
select * from Region

--2. Select the FirstName and LastName columns from the Employees table.
select FirstName,LastName from Employees

--3. Select the FirstName and LastName columns from the Employees table. Sort by LastName. orderby
select FirstName,LastName from Employees
order by LastName 

--4. Create a report showing Northwind's orders sorted by Freight from most expensive to cheapest. Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
select OrderID,OrderDate,ShippedDate,CustomerID,Freight from Orders
order by Freight desc

--5. Create a report showing the title and the first and last name of all sales representatives. where
select Title,FirstName,LastName from Employees where title = 'sales representative'

--6. Create a report showing the first and last names of all employees who have a region specified.
select * from Employees where Region is not null

--7. Create a report showing the first and last name of all employees whose last names start with a letter in the last half of the alphabet. Sort by LastName in descending order.

select FirstName,LastName from Employees

--8. Create a report showing the title of courtesy and the first and last name of all employees whose title of courtesy begins with "M".
select TitleOfCourtesy,FirstName,LastName from Employees where TitleOfCourtesy like 'M%'

--9. Create a report showing the first and last name of all sales representatives who are from Seattle or Redmond.
select FirstName,LastName from Employees where Title = 'sales representatives' and City = 'Seattle' or City = 'Redmond'

--10. Create a report that shows the company name, contact title, city and country of all customers in Mexico or in any city in Spain except Madrid
select CompanyName,ContactTitle,City,Country from Customers where Country <> 'spain' and Country <> 'mexico'

--11. If the cost of freight is greater than or equal to $500.00, it will now be taxed by 10%. Create a report that shows the order id, freight cost, freight cost with this tax for all orders of $500 or more.
select Freight,OrderID,(Freight*1.1) as tax_included from Orders where Freight >= 500000

--12. Find the Total Number of Units Ordered of Product ID 3
select sum(UnitsInStock),ProductName from Products where ProductID =3 group by ProductName

--13. Retrieve the number of employees in each city
select City,count(EmployeeID) from Employees group by City

--14.How many sales did my employees make on a product basis?
select (e.FirstName + e.LastName) as fullname, p.ProductName, sum(od.Quantity), SUM(od.Quantity*od.UnitPrice)
from Products p
inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o
on od.OrderID=o.OrderID
inner join Employees e
on o.EmployeeID=e.EmployeeID
group by e.FirstName + e.LastName,p.ProductName
order by 4 desc

--15.Which is my most valuable customer?
select top 1 c.CompanyName,SUM(od.Quantity) as adet,SUM(OD.Quantity*od.UnitPrice) as income
from Customers c
inner join orders o
on c.CustomerID=o.CustomerID
inner join [Order Details] od
on o.OrderID=od.OrderID
group by c.CompanyName
order by 3 desc

--16.How much did I sell to which countries?
select c.Country,SUM(od.Quantity*od.UnitPrice)
from Customers c
inner join Orders o
on c.CustomerID=o.CustomerID
inner join [Order Details] od
on o.OrderID=od.OrderID
group by c.Country
order by 2 desc
