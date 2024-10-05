SELECT TrackId, Name
FROM tracks
WHERE Name REGEXP '[áéíóúÁÉÍÓÚ]';
