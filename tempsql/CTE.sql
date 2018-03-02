use [AdventureWorks2014]

with Sales_CTE (SalesPersonID, NumberOfOrders, MaxDate)
as
(
    select top 5 SalesPersonID, count(*), max(OrderDate)
    from Sales.SalesOrderHeader
    group by SalesPersonID
    order by 2 asc
)

select P.FirstName, P.LastName, c.NumberOfOrders, c.MaxDate
from Sales_CTE c left join Person.Person as P
on c.SalesPersonID = P.BusinessEntityID