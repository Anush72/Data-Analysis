# Aggregations
# Counting the number of rows
select count(*) as total_number_of_customer
from customer;
# sum,average,min and max of invoice
select sum(total) 
from invoice;
select avg(total)
from invoice;
select min(total)
from invoice;
select max(total)
from invoice;
# Group by
select BillingCountry,sum(total) as total_invoice_per_country
from invoice
Group by BillingCountry;
# Having 
select Country,count(*) as total_number_customer
from customer 
group by Country
Having count(*)  >= 5;
# Distinct in aggregation
select count(distinct TrackId) as trackid
from invoiceline;
# count condition
select count(*) as number_of_track_more_than_300000_millisec
from track 
where Milliseconds > 300000;
# customer who have more than 5 invoices
select CustomerId,count(*) as number_of_invoices
from invoice
Group by CustomerId
having count(*) > 5;
# Invoice more than $10
select * 
from invoice
where Total > 10;
