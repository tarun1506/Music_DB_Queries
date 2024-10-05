# musicDBQueries
Assignment 3 Submission by Vinal Dalcy Dsouza

## How to run it

Initialize the database by running

Download chinok database from https://www.sqlitetutorial.net/sqlite-sample-database/ unzip it and make sure that you have a chinook.db file in the root folder of the project

## Queries

* Query 1: Create a new Table Music Video, that is a class of type Track (generalization) but adds the attribute Video director. A music video is a track. There cannot be a video without a track, and each track can have either no video or just one. 

Run query1.sql on dbrowser, open the chinook.db db and run the query1.sql file

```
sqlite3 chinok.db < query1.sql
```

* Query 2: Write the queries that insert at least 10 videos, respecting the problem rules.
```
sqlite3 chinok.db < query2.sql
```
* Query 3:  Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.
```
sqlite3 chinok.db < query3.sql
```
* Query 4:  Write a query that lists all the tracks that have a ' in the name (e.g. Jorge Da Capadócia, o Samba De Uma Nota Só (One Note Samba)) (this is á,é,í,ó,ú)
```
sqlite3 chinok.db < query4.sql
```

* Query 5: Creative addition. Make an interesting query that uses a JOIN of at least two tables.
```
sqlite3 chinok.db < query5.sql
```

* Query 6: Creative addition. Make an interesting query that uses a GROUP statement and at least two tables.
```
sqlite3 chinok.db < query6.sql
```

* Query 7:  Write a query that lists all the customers that listen to longer-than-average tracks, excluding the tracks that are longer than 15 minutes. 
```
sqlite3 chinok.db < query7.sql
```

* Query 8:  Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database. 
```
sqlite3 chinok.db < query8.sql
```