SELECT 
    t.TrackId, 
    t.Name AS TrackName, 
    al.Title AS AlbumTitle, 
    ar.Name AS ArtistName
FROM 
    tracks t
JOIN 
    albums al ON t.AlbumId = al.AlbumId
JOIN 
    artists ar ON al.ArtistId = ar.ArtistId
ORDER BY 
    ar.Name, al.Title, t.Name;
