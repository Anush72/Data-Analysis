# Like Operator

# % - indicates zero or more character
# _ - indicates a single character
# [] - Represent any character in bracket
# - : specific range

USE chinook;

SELECT * 
FROM artist;


# Match the Name Starting with 'C'
SELECT Name
FROM artist 
Where Name Like 'C%';

# Mathc the address of Cutomer 'Rue'
SELECT *
FROM Customer
WHERE Address LIKE '%Rue%';

# Match name where il occur in the second positiom
SELECT *
FROM Customer
WHERE Address LIKE '_il%';


# Using Like with AND for Complex Conditions
SELECT FirstName,LastName
FROM customer
WHERE FirstName Like 'A%' and Country LIKE '%Canada%';

# NOT Like Function
SELECT *
FROM Customer
WHERE Country NOT LIKE '%Canada%';