# Count fUnction

# 1. Counting the number of Rows 
select count(*) as Total_Invoice
from invoice;

# 2. Counting the distinct customer in invoice
select count(distinct CustomerId) as total_customer
from invoice;

# Count the rows with match condition
select count(case when total >50 then 1 else null end) as invoice_more_than_50
from invoice;

# Count rows in groups with group by
select Country,count(*) as Customer_Count
from customer
Group by Country;

# Having with Count
select Country,count(*) as Customer_Count
from customer
Group by Country
Having Customer_Count >5;