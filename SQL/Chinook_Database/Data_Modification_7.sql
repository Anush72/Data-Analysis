# Data Modification
USE chinook;
SELECT * From artist;
# Insert Value into artist
INSERT INTO artist (ArtistId,Name)
Values
(301,'Purna Rai'),
(302,'John Rai'),
(303,'Tribal Rain');
# UPDATE the Customer Country
UPDATE customer
set Country = 'Nepal'
where CustomerId = 1;
# Update the Invoice Total
UPDATE invoice
set Total = 90.0
where CustomerId = 3;
# DELETE from artist
DELETE
FROM artist 
where ArtistId = 301;
# Transaction Begin-Update-Commit ( when sure about changes)
START transaction;
UPDATE customer
SET Country = 'Austrlia'
where CustomerID = 1;
COMMIT;
SELECT * 
FROM customer;
# Transaction 
UPDATE customer
SET Country = 'Brazil'
where CustomerID = 1;
rollback;
