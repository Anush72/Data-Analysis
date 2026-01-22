# NULL Operator
use chinook;

# NULL with WHERE Clause
SELECT * 
FROM customer
WHERE Fax IS NULL;

# NULL Operator on Multiple Columns

SELECT * 
FROM customer 
WHERE Fax is NULL OR Company IS NULL;

# IS NuLL with Count Function
SELECT count(*) as empty_fax
FROM customer
WHERE FAX IS NULL;

# Update Statement with NULL
UPDATE customer
SET Fax = 'XXXXXXXX'
WHERE Fax IS NULL;

# IS NULL with Delete Statement
DELETE FROM customer
where Fax is NULL;g