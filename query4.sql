-- Querying to display tracks which has vowel tilts in the name

SELECT TrackId, Name
FROM tracks
WHERE Name REGEXP '[áéíóúÁÉÍÓÚ]';
