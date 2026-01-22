# Aggregate Function

# 1. Count
SELECT count(*) as Total_Records 
FROM genre;

# Count Distinct 
SELECT COUNT(distinct SupportRepId) as Total_Support
FROM customer;

# 2. SUM
SELECT SUM(Total) as Total_Invoice
FROM invoice;

# Avergae
SELECT AVG(Total) as average_Invoice
FROM invoice;

# MAX and MiN
SELECT max(Total) as Highest_Invoice
FROM invoice;

SELECT min(Total) as Lowest_Invoice
FROM invoice;
