# Row_NUMBER function (Assign Sequential rank per genre by quantity sold) 
select Name,total_amount,
row_number() over (order by total_amount DESC) as row_num
from
(
	select g.Name,sum(i.Quantity * i.UnitPrice) as Total_Amount
	from genre g
    left join track t 
		ON g.GenreId = t.GenreId
	left join invoiceline i 
    on i.TrackId = t.TrackId
	group by g.Name) AS genre_sales;
# Rank() (Rank Customers by total Spending)
select *,
rank() over (order by Total_Amount DESC) as rank_no
from
(select c.FirstName,C.LastName,sum(i.Total) as Total_Amount
from customer c
left join invoice i 
on c.CustomerId = i.CustomerId
group by c.FirstName,c.LastName) as customer_invoice;
# DENSE_RANK() ( Rank Genres by revenue (no gaps for ties)
select *,
dense_rank() over (order by Revenue) as rank_no
from
(
select g.Name,sum(i.Quantity*i.UnitPrice) as Revenue
from genre g 
left join track t 
on g.GenreId = t.GenreId
left join invoiceline i
on t.TrackId = i.TrackId
group by g.Name
) as genre_invoice;
# nTitle(n) Divide top-selling customers into quartile
select *,
ntile(4) over (ORDER by Total_Amount Desc) as quartile
from
(select c.FirstName,c.LastName,c.CustomerId,sum(i.Total) as Total_Amount
from customer c
left join invoice i 
on c.CustomerId = i.CustomerId 
group by c.CustomerId) as customer_invoice;
# SUM() OVER() 
SELECT
  CustomerId,
  InvoiceId,
  Total,
  SUM(Total) OVER (PARTITION BY CustomerID) AS customer_average
FROM invoice;
# Average Over
SELECT
  CustomerId,
  InvoiceId,
  Total,
  AVG(Total) OVER (PARTITION BY CustomerID) AS customer_total
FROM invoice;
# First invoice per customer
select CustomerId,InvoiceId,InvoiceDate,
MIN(InvoiceDate) OVER(partition by CustomerId) as First_Invoice
from
invoice;
# Last invoice per customer
select CustomerId,InvoiceId,InvoiceDate,
max(InvoiceDate) OVER(partition by CustomerId) as Last_Invoice
from
invoice;
# LAG for showing the previous Invoice total for Trend Analysis
Select CustomerID,
InvoiceDate,
Total,
LAG(Total) Over (partition by CustomerId Order by InvoiceDate) as Previous_Invoice
from 
invoice;
# Lead for showing the next invoice 
Select CustomerID,
InvoiceDate,
Total,
Lead(Total) Over (partition by CustomerId Order by InvoiceDate) as next_Invoice
from 
invoice;
# first value per customer
Select CustomerID,
InvoiceDate,
Total,
first_value(Total) Over (partition by CustomerId Order by InvoiceDate) as firstvalue_invoice
from 
invoice;
# last value per customer
Select CustomerID,
InvoiceDate,
Total,
last_value(Total) Over (partition by CustomerId Order by InvoiceDate
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as lastvalue_invoice
from 
invoice;
# Percent Rank
Select CustomerID,
InvoiceDate,
Total,
percent_rank() Over (order by Total) as PercentRank
from 
invoice;
