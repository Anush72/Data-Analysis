# CTEs

# Total Tracks Per artist
with artist_album as (
	select ArtistID, Name as ArtistName, AlbumID
    from artist
    left join album using (ArtistID)
) 
select ArtistName, count(t.TrackId)
from artist_album a 
left join track t on a.AlbumId = t.AlbumId
Group by ArtistName;
# genre revenue > $100
with genre_track as (
	select g.Name as Genre_Name,t.trackid
    from genre g
    left join track t 
    on g.GenreId = t.GenreID
)
select gt.Genre_Name,sum(i.Quantity*i.UnitPrice) as Total_Revenue
from genre_track gt
left join invoiceline i 
on gt.trackid = i.trackid
group by gt.Genre_Name
HAVING Total_Revenue > 100;