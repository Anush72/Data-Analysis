# With Clause
-- 1. Create the table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- 2. Insert the data
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES
(1, 'Martin', 'HR', 65000),
(2, 'Bob', 'Sales', 75000),
(3, 'Martin', 'HR', 65000),
(4, 'Charlie', 'Marketing', 88000),
(5, 'Diana', 'Sales', 75000);

# Finding the Employees above than average salary

With AvgSalaryCTE (averagevalue) as
(
	select AVG(Salary) 
    from Employees
    )
Select * 
from Employees 
where Salary > (select averagevalue from AvgSalaryCTE);