# Like Operator

# Basic Use of SQL
SELECT FirstName, LastName
FROM customer
WHERE City in ('Tokyo','Paris','Melbourne');

# SQL NOT IN
SELECT FirstName, LastName
FROM customer
WHERE City NOT in ('Tokyo','Paris','Melbourne');