# Limit Clause
USE chinook;

select * from customer;

# Basic Limit Usuage - returning three rows
SELECT * 
FROM customer
Limit 3;

# Limit With orde by clause
SELECT * 
FROM customer 
order by FirstName Desc
Limit 3;

# Limit With Off set 
# example of displaying two rows skipping 2 rows

select * 
from customer 
order by City
LIMIT 2 OFFSET 2;