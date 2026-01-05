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
