# Primary Key Constraints

# Creating the primary key in sql
use hello;

CREATE TABLE Person (
	PersonID int NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age int
    );
    
# Verifying the primary key constraints

INSERT INTO Person VALUES
(1,'Giri','ANUSH',22),
(1,'Anush','Giri',21);