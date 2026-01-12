# Insert into statement
CREATE DATABASE StudentDB;
USE StudentDB;

# Creating the table Student
CREATE TABLE Student (
Roll_no INT Primary key,
Name Varchar(50),
Address varchar(50),
Phone Varchar(15),
Age int);

# INSERING THE VALUES

INSERT INTO Student (Roll_no,Name,Address,Phone,Age)
Values (1,'Anush','Australia','XXXXXXXXXX',18),
(2,'Sophia','Germany','XXXXXXXXX',20),
(3,'Achyut','Japan','XXXXXXXXXX',22);


SELECT * 
FROM Student;

# INSERTING Data into Specific columns
INSERT INTO Student (Roll_no,Name,Age)
VALUES (6,'Hello',20);
