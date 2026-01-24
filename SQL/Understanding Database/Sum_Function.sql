# SUM Function
use chinook;

# USing SUM() with One Column
SELECT SUM(Total) as Total_Amount
FROM invoice;

# Using SUM with Expression
SELECT SUM(UnitPrice*Quantity) as TotalRevenue
FROM invoiceline;

# Using Group by
SELECT CustomerId,SUM(Total) as Total_Amount
FROM invoice
GROUP BY CustomerId;

# Sum wit distict
SELECT SUM(distinct Total) as SumDisticntPrice
FROM invoice;

# SUM with Having
SELECT CustomerId,SUM(Total) as Total_amount
FROM invoice
GROUP BY CustomerId
HAVING Total_Amount >100;