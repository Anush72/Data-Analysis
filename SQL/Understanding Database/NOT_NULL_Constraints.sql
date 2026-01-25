# Creating the NOT NULL Constraints

# We can make the sql table for not null constraints to ensure it gots data
use hello;

# Creating the NOT NULL in Table Creation

CREATE  TABLE Stu (
	Roll_no INT primary key,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    AGe INT(2)
    );
    
# Adding not null in existing table
ALTER TABLE stu
modify Address VARCHAR(100) NOT NULL ;
    
    

