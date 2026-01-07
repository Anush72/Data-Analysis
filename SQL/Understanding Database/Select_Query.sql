# SQL SELECT QUERY 

# Creating the table customer
CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT(2),
    Phone VARCHAR(10)
);

# Inserting the values into Cutsomer
INSERT INTO Customer(CustomerID,CustomerName,LastName,Country,Age,Phone)
VALUES (1,'Chirs','Smith','Australia',21,'98760656'),
(2,'Hello','World','Universe',100,'0000000'),
(3,'Luke','Miller','Australia',25,'04567890'),
(4,'Carlos','Hernandez','USA',21,'XXXXXXXXXX'),
(5,'Akira','Tanaka','Japan',24,'XXXXXXXXXX');

# selecting the specific columns
SELECT CustomerName,LastName
FROM Customer;

# Selecting all columns
SELECT * 
FROM Customer;

# Using the Where Clause
SELECT * 
FROM Customer
WHERE Country = 'Australia';

# SELECT With Distinct Case
SELECT DISTINCT Country 
From Customer;

# SELECT with Having Clause
Select Country,Count(*) as count
from Customer
GROUP BY Country
Having Count >=2;

# Select with order by
SELECT * 
FROM Customer
ORDER by Age;