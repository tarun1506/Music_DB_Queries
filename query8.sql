WITH CTE_GenreAverageLength AS (
    SELECT 
        g.GenreId,
        AVG(t.Milliseconds) AS AvgLength
    FROM 
        genres g
    JOIN 
        tracks t ON g.GenreId = t.GenreId
    GROUP BY 
        g.GenreId
    ORDER BY 
        AvgLength DESC
    LIMIT 5
) -- CTE to get top 5 geners with highest avg track length. 
SELECT 
    t.TrackId,
    t.Name,
    t.Milliseconds,
    g.Name AS Genre,
    g.GenreId
FROM 
    tracks t
JOIN 
    genres g ON t.GenreId = g.GenreId
WHERE 
    g.GenreId NOT IN (SELECT GenreId FROM GenreAverageLength);
