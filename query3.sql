-- Query to insert video for the track name "Voodoo"

INSERT INTO MusicVideo(TrackId, video_director)
    SELECT TrackId, "Howard Shore"
    FROM tracks
    WHERE name == "Voodoo";