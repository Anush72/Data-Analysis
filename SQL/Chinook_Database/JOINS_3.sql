# Joins 
# Inner Joins - Return only matches
select c.FirstName,sum(i.Total) as TotalInvoice 
from customer c
inner join invoice i 
on c.CustomerId = i.CustomerId
Group by i.CustomerId;
# left Join Keep all Left
select * 
from artist a 
left join album al
on a.ArtistId = al.ArtistId;
# Right Join Keep all Right
select * 
from customer c
right join employee e
on c.SupportRepId = e.EmployeeId;
# Full Outer Join - Keeping all 
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.Total
FROM Customer c
LEFT JOIN Invoice i
    ON c.CustomerId = i.CustomerId

UNION

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.Total
FROM Customer c
RIGHT JOIN Invoice i
    ON c.CustomerId = i.CustomerId;
# Self Join - same table, comparing rows with same table
select e.FirstName,e.LastName,b.FirstName as Manager_FirstName, b.LastName as Manager_LastName
from employee e
Left JOIN employee b
on e.ReportsTo = b.EmployeeId;
# Join Multiple Table Finding the genre the customer buy
select distinct(c.FirstName),c.LastName,(g.Name)
from customer c
left join invoice i 
on c.CustomerId = i.CustomerId
left join invoiceline il 
on i.InvoiceId = il.InvoiceId
left join track t 
on t.TrackId = il.Quantity
left join genre g 
on t.GenreId = g.GenreId;
# Join with where
select * 
from track t 
left join genre g 
on t.GenreId = g.GenreId
where g.Name = 'pop';
# left Join with Aggregations, Order by 
select e.FirstName,e.LastName,sum(i.Total) as Total_Sales
from employee e
left JOIN customer c 
on e.EmployeeId = c.SupportRepId
left join invoice i 
on c.CustomerId = i.CustomerId
group by e.FirstName,e.LastName
Having Total_Sales > 0
ORDER BY Total_Sales DESC;


