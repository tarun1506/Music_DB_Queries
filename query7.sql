WITH AverageTrackLength AS (
    SELECT AVG(Milliseconds) AS AvgLength
    FROM tracks
),
LongerThanAverageTracks AS (
    SELECT 
        TrackId,
        Milliseconds
    FROM 
        tracks
    WHERE 
        Milliseconds > (SELECT AvgLength FROM AverageTrackLength)
        AND Milliseconds <= 900000  -- 15 minutes in milliseconds
)
SELECT DISTINCT 
    c.CustomerId,
    c.FirstName,
    c.LastName,
    lat.Milliseconds
FROM 
    customers c
JOIN 
    invoices i ON c.CustomerId = i.CustomerId
JOIN 
    invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN 
    LongerThanAverageTracks lat ON ii.TrackId = lat.TrackId;
