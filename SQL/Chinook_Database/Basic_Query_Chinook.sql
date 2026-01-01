# Profiling of Database
show tables;
# Counting the number of rows in each table
SELECT 'album' as table_name,count(*) as row_count
FROM album
UNION ALL
SELECT 'artist' as table_name, count(*)
FROM artist
UNION ALL
SELECT 'customer' as table_name, count(*)
from customer
UNION ALL
SELECT 'employee' as table_name, count(*)
from employee
UNION ALL
SELECT 'genre' as table_name, count(*)
from genre
UNION ALL
SELECT 'invoice' as table_name, count(*)
from invoice
UNION ALL
SELECT 'invoiceline' as table_name, count(*)
from invoiceline
UNION ALL
SELECT 'mediatype' as table_name, count(*)
from mediatype
UNION ALL
SELECT 'playlist' as table_name, count(*)
from playlist
UNION ALL
SELECT 'playlisttrack' as table_name, count(*)
from playlisttrack
UNION ALL
SELECT 'track' as table_name, count(*)
from track;
# Column Profiling
DESCRIBE album;
DESCRIBE customer;
Describe artist;
# Looking at album and artist table
SELECT * FROM
album;
SELECT * FROM 
artist;
# Counting the albums per artist
SELECT b.Name,
count(*) as number_of_albumscustomer
FROM album a
LEFT JOIN artist b
on a.ArtistId = b.ArtistId
group by a.ArtistId,b.name;
# Looking at customer and employee table
SELECT * 
FROM customer;
SELECT * 
FROM Employee;
# Counting the number of customer per each sales represent
SELECT e.FirstName,e.LastName, count(c.SupportRepId) as total_count_of_customer
FROM customer c 
LEFT JOIN employee e
on c.SupportRepId = e.EmployeeId
group by c.SupportRepId;
# Invoice of Customer
SELECT c.CustomerId,c.FirstName,c.LastName ,sum(i.Total) as Bill_Amount
FROM customer c
LEFT JOIN invoice i
on c.CustomerId = i.InvoiceId
GROUP BY i.CustomerId,c.CustomerId;
# Total track sell 
SELECT t.name, sum(i.Quantity) as total_quantity,sum(i.UnitPrice) as Total_Price
FROM invoiceline i
JOIN track t 
on i.TrackId = t.TrackId
GROUP by i.TrackId,t.TrackId;