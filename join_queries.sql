USE chinook;
select  * from customer;

select  c.CustomerId,c.FirstName,c.LastName,c.Country,i.InvoiceId, i.InvoiceDate,
i.Total from customer c inner join invoice  i on c.CustomerId =i.CustomerId ;

select  c.CustomerId,c.FirstName,c.LastName,c.Country from customer c
 left join invoice  i on c.CustomerId =i.CustomerId where i.InvoiceId is NULL ;
 
select t.Name as Product, sum(il.UnitPrice * il.Quantity) as TotalRevenue from invoiceline il inner join
track t on il.TrackId =t.TrackId group by t.Name order by TotalRevenue desc;

select g.Name as Category, sum(il.UnitPrice *il.Quantity) as TotalRevenue from invoiceline il inner join
track t on il.TrackId =t.TrackId inner join genre g on t.GenreId =g.GenreId group by g.name order by TotalRevenue desc;

select c.Country ,sum(i.Total) as TotalSales from customer c inner join invoice i on
 c.CustomerId = i.CustomerId group by c.Country order by TotalSales desc;
 
select c.CustomerId,concat(c.FirstName,' ',c.LastName) as CustomerName,sum(i.Total) as AmountSpent 
from customer c inner join invoice i on  c.CustomerId=i.CustomerId group by c.CustomerId, CustomerName
order by AmountSpent desc limit 5;


 
 
 
