CREATE TABLE "MusicVideo" (
	"TrackId"	INTEGER NOT NULL,
	"video_director"	TEXT NOT NULL,
	PRIMARY KEY("TrackId"),
	FOREIGN KEY("TrackId") REFERENCES "tracks"("TrackId") ON DELETE CASCADE
);