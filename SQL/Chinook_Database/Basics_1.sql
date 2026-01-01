# Basics
# Select all information from customer table
SELECT * 
FROM customer;
# select distinct city from customer
SELECT DISTINCT city 
from customer;
# using where clause
select * from 
invoice 
where BillingCountry = 'Australia';
# Order by
select * 
from track
order by Milliseconds DESC;
# Rename Columns
select FirstName as customer_first
from customer;
# Select the Customer from USA, Austrlia and Canada using in 
select * 
from 
customer
where Country in ('USA','Canada','Australia');
# like for pattern for finding the customer first name start with f
select * 
from customer
where FirstName LIKE 'f%';
# Selecting the customer where fax is null
select * 
from customer 
where fax is null;
# Ranging 
select * 
from invoice 
where Total between 5 and 15;
