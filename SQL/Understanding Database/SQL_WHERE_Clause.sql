# USING hello database
USE hello;

CREATE TABLE employee (
	EmpID INT Primary key,
    Name Varchar (50),
    Country Varchar(50),
    Age INT,
    Mob Varchar(15)
    );
    
INSERT INTO employee(EmpID,Name,Country,Age,Mob)
Values (1,'John','USA',23,'734797334'),
(2,'Liam','Australia',21,'436789555'),
(3,'Noah','Canada',24,'34873847'),
(4,'Olivier','UK',21,'328440934'),
(5,'Luca','Spain',22,'73248679')
;

# WHERE Clause with Logical Operator
SELECT * 
FROM employee
WHERE Age =24;

# WHERE Caluse with Comparison Operator
SELECT * 
FROM employee
WHERE Age >21;
