USE hello;
# Create a table customer 
CREATE table customer 
(CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Country VARCHAR(50),
Age INT CHECK(Age>=0 AND Age<=99),
Phone int(10)
); 
# INSERTING the values
INSERT INTO Customer (CustomerID,FirstName,LastName,Country,Age,Phone)
Values
(1,'Anush','Giri','Nepal',21,456678910),
(2,'Luke','Muller','Japan',30,89016780);
# Drop the table
DROP TABLE customer;
# Rename table
ALTER TABLE customer
RENAME to new_customer;
# Rename the column name
ALTER TABLE new_customer
rename column FirstName TO Name;
# Add new column 
ALTER table new_customer
add spending INT;
# Modify the column datatype
ALTER TABLE new_customer
modify column Phone BIGINT;

# looking at table columns and type of data
DESCRIBE new_customer;
# TRUNCATE the table
CREATE TABLE EMPLOYEE (
	EMP_ID INT(4),
    NAME VARCHAR(20),
    AGE INT (3),
    DOB DATE,
    SALARY DECIMAL (7,2)
    );
INSERT INTO EMPLOYEE VALUES (101,'Anush Giri',21,'1998-08-20',25000);
INSERT INTO EMPLOYEE VALUES (102,'Chris George',27,'1996-01-29',51000);
TRUNCATE TABLE EMPLOYEE;
select * from EMPLOYEE;