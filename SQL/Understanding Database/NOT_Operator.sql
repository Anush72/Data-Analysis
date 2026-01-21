# NOt operator

# Using SQL Not To exclude a Specific value

SELECT * 
from customer
WHERE  NOT Country = 'Canada'; 

# Using SQl NOT with IN Operator
SELECT * 
from customer
WHERE  NOT Country IN ('Japan','Australia'); 

# Using SQL NOT with Like Operator
SELECT FirstName
from customer
WHERE NOT FirstName LIKE 'A%';

# USING SQL NOT with NULL values
SELECT * 
from customer
WHERE NOT Company IS NULL;

# USING NOT with AND Operator
SELECT * 
FROM customer
WHERE NOT Country = 'Japan' AND NOT Country = 'Australia';