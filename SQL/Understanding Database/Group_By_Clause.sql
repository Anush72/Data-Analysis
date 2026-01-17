# USE Database Chinook
USE chinook;
SELECT * from invoice;

# Group by Single Column
SELECT BillingCountry, sum(Total) as Revenue_From_Country
FROM 
invoice
Group by BillingCountry;

# Group by Multiple Columns
SELECT CustomerId,BillingCountry, sum(Total) as Revenue_From_Country
FROM 
invoice
Group by BillingCountry,CustomerId;

# Having Clause in Group by Clause
SELECT BillingCountry, sum(Total) as Revenue_From_Country
FROM 
invoice
Group by BillingCountry
Having Revenue_From_country >50;