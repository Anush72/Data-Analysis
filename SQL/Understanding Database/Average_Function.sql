# Average Function

# Calcualting Average Overall

SELECT AVG(Total) as AverageInvoice
FROM invoice;

# Average Per Customer
SELECT CustomerId, AVG(Total) as Average_Total
FROM invoice
GROUP by CustomerId;

# Acergae with Having Fuction
SELECT CustomerId, AVG(Total) as Average_Total
FROM invoice
GROUP by CustomerId
HAving Average_Total > 6;