WITH LongerThanAverageTracks AS (
    SELECT 
        TrackId
    FROM 
        tracks
    WHERE 
        Milliseconds > (SELECT AVG(Milliseconds) FROM tracks)
        AND Milliseconds <= 900000  -- 15 minutes in milliseconds
)
SELECT 
    c.CustomerId,
    c.FirstName,
    c.LastName
FROM 
    customers c
JOIN 
    invoices i ON c.CustomerId = i.CustomerId
JOIN 
    invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN 
    LongerThanAverageTracks lat ON ii.TrackId = lat.TrackId
GROUP BY 
    c.CustomerId, c.FirstName, c.LastName;
