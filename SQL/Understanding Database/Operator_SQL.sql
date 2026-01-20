# SQL Logical Operator
USE chinook;

# AND - Should Satisfy both condition
SELECT * 
FROM customer
where Country = 'Brazil' AND SupportRepId = 3;

# OR - Should Satisfy one Condition

SELECT * 
FROM  track
WHERE GenreId = 1 or AlbumId = 1;

# In Operator - Statisfy what inside the bracket
SELECT * 
FROM customer
WHERE Country in ('Austria','Canada');

# NOT Operator - Should return which is not satisfy
SELECT * 
FROM customer
WHERE Country Not in ('Austria','Canada');


# Like Operator - Search For Specific Patterns

SELECT * 
FROM customer
WHERE FirstName Like 'R%';

# Between Operator
SELECT * 
FROM customer 
WHERE CustomerID Between 1 AND 5;

