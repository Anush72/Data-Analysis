# MAX Function

# Find the maximum invoice 
USE chinook;

# Find the maximum price in table
SELECT MAX(Total) AS Highest_Invoice
FROM invoice;

# Use Max Function with condition
SELECT MAX(Total) AS Highest_Invoice
FROM invoice
WHERE CustomerID = 3;

# Select the lastest invoice
SELECT MAX(InvoiceDate) AS Highest_Invoice
FROM invoice;

# MAX() with Group by
SELECT CustomerId, Max(Total) as Highest_Invoice
FROM invoice
GROUP BY CustomerId;

# Using Max() in SUbqueries
SELECT * 
FROM invoice
where Total = (select max(total) from invoice);

# MAX with Having 
SELECT InvoiceDate, Max(Total) as HighestInvoice
FROM invoice
Group by InvoiceDate 
HAVING HighestInvoice > 50;
