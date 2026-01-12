# UPDATE STATEMENT'
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

-- Insert sample data
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 

(1, 'Liam', 'Brown', 'United Kingdom', 25, '441234567890'),
(2, 'Sofia', 'Martinez', 'Spain', 23, '341234567890'),
(3, 'Akira', 'Tanaka', 'Japan', 26, '811234567890'),
(4, 'Hans', 'Müller', 'Germany', 27, '491234567890'),
(5, 'Olivia', 'Dubois', 'France', 24, '331234567890');

# Update the single column using the update statement
UPDATE Customer 
Set CustomerName = 'Isabella'
WHERE CustomerID= 1;

SELECT * 
from Customer;

# Updating the multiple columns using Update
UPDATE Customer
SET CustomerName = 'John',
Country = 'Spain'
WHERE CustomerID = 1;