# Distinct Clause

# Fetching unique names of composer
select distinct composer
from track;

# fetching unique combinations of multiple columns
select distinct composer,AlbumId
from track:

# Distinct with order by clause
select distinct Name 
from Genre;

# Distinct With Aggregate Functions
SELECT Count(Name) 
from genre;