# Having Clause

select Department,
count(EmployeeID) as Employee_Count
FROM employees
GROUP BY Department
HAVING
COUNT(EmployeeID) > 0;

# Filter Total Salary
SELECT SUM(Salary) as Total_Salary
from employees
having sum(salary) >= 250000;

# Filter Average Salaray
SELECT Department,AVG(Salary) as average_salary
from employees
Group by Department
having AVG(salary) > 80000;

