-- Query to insert records into "Music Video"

-- Trigger to check if there's a track before inserting Video
CREATE TRIGGER IF NOT EXISTS every_video_has_track
BEFORE INSERT
ON MusicVideo
BEGIN
	SELECT
		CASE
			WHEN NEW.TrackId NOT IN
				(SELECT TrackId FROM tracks)
			THEN
				RAISE(ABORT, "A Video Must have Its Own Track")
		END;
END;


INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(1,"David Fincher");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(2,"Michael Bay");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(3,"Melina Matsoukas");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(4,"Mark Romanek");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(5,"Francis Lawrence");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(6,"Chris Cunningham");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(7,"Michel Gondry");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(8,"Dave Meyers");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(9,"Cole Bennett");

INSERT INTO MusicVideo (TrackId, video_director)
VALUES
(10,"Spike Jonze");