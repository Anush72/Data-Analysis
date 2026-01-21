# NOT Equal Operator

# SQL NOT EQUAL Operator String
SELECT FirstName
FROM customer
WHERE FirstName != 'Luis';


# SQL NOT EQUAL with Multiple Condition
SELECT *
FROM customer
WHERE FirstName != 'Luis'
AND SupportRepId !=3;
