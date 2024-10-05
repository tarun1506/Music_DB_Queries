SELECT 
    ar.Name AS ArtistName,
    al.Title AS AlbumTitle, 
    COUNT(t.TrackId) AS NumberOfTracks
FROM 
    albums al
JOIN 
    artists ar ON al.ArtistId = ar.ArtistId
JOIN 
    tracks t ON al.AlbumId = t.AlbumId
GROUP BY 
    al.AlbumId, ar.Name
ORDER BY 
    NumberOfTracks DESC, ar.Name;
