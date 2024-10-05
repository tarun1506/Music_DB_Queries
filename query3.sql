INSERT INTO MusicVideo(TrackId, video_director)
    SELECT TrackId, "Howard Shore"
    FROM tracks
    WHERE name == "Voodoo";