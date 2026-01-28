# SQL Joins

# Inner Join  - SHowing Only Matching Value
USE chinook;
SELECT t.Name,g.Name
FROM track t 
INNER JOIN genre g
on t.GenreId = g.GenreId;

# LEFT JOIN  - Showing All Values from left table
SELECT t.Name,g.Name
FROM track t 
LEFT JOIN genre g
on t.GenreId = g.GenreId;

# RIGHT JOIN - showing all Values from Right Table
SELECT t.Name,g.Name
FROM track t 
RIGHT JOIN genre g
on t.GenreId = g.GenreId;

# FULL JOIN - Show all Values From Both Tables
SELECT t.Name,g.Name
FROM track t 
JOIN genre g
on t.GenreId = g.GenreId;