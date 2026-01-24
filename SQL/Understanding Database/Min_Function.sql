# Min Function

# Lowest Invoice
SELECT min(Total) as Lowest_Amount
FROM invoice;

# Lowest Invoice in CustomerId 1,2 
SELECT MIN(Total) as Lowest_Invoice
FROM invoice
Where CustomerId in (3,4);

# MIN function with Group by
SELECT InvoiceDate,MIN(Total) as Lowest_Invoice
FROM invoice
Group by InvoiceDate;

# Min Function with Order by
SELECT InvoiceDate,MIN(Total) as Lowest_Invoice
FROM invoice
Group by InvoiceDate
Order By Lowest_Invoice;

# Min Function with Having Function
SELECT InvoiceDate,MIN(Total) as Lowest_Invoice
FROM invoice
Group by InvoiceDate
HAVING Lowest_Invoice >10;