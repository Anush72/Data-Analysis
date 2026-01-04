# Subquery
# Scalar SubQuery 
select FirstName
from customer 
where CustomerId = (select CustomerId from invoice order by Total desc LIMIT 1);
# Using In 
Select * 
from track 
where TrackId in (select TrackId from invoiceline);
# Using NOT IN to find the track that doesnot in invoiceline
Select * 
from track 
where TrackId not in (select TrackId from invoiceline);
# Using Exits to find Customer
SELECT * FROM Customer c WHERE EXISTS (SELECT 1 FROM Invoice i
WHERE i.CustomerId = c.CustomerId AND i.Total > 10);
# Subqueries to find the average invoice value of customer
select i.InvoiceId,i.CustomerId,i.Total
from invoice i
where i.Total > 
( select AVG(i2.total)
from invoice i2
where i2.CustomerId = i.CustomerId);
# Subquery with groub by 
select GenreID
from track
where TrackId in (select TrackId from invoiceline group by TrackId having sum(Quantity) >5);

# Customer above average spending
select * 
from customer
where CustomerId in
(select CustomerId from invoice where Total > (select avg(Total) from invoice));
# Top Spenders per Country
select c.FirstName,c.LastName,c.Country,i.Total
from customer c 
left join invoice i
on c.CustomerId = i.CustomerId
where i.Total = (
select max(i2.total) from invoice i2 
join customer c2
on i2.CustomerId = c2.CustomerId
where c2.CustomerId = c.CustomerId )
ORDER BY c.Country;