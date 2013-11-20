Here’s what I’m thinking, Each person just use 1-5 for the genre id,
100-999 for album and artist id’s, and 1000-9999 for song title.
I’ll tell you your numbers in the following format:
Name (genreID, albumID range, artistID range, songID range)
Chase (1, 100-280, 100-280, 1000-2800)
Josh (2, 281-460, 281-460, 2801-4600)
Patrick (3, 461-640, 461-640, 4601-6400)
John (4, 641-820, 641-820, 6401-8200)
Jordan (5, 821-999, 821-999, 8201-9999)

Don’t think we have to complicate the album table by throwing in a 
list of songs, we can get the songs by doing a select by album id 
in the song table. Just my thoughts, feel free to make any necessary 
changes (or just changes for general improvement).

The schema can be found below, please add your inserts to the 
appropriate sections.


------------------------------------------------------------------------------------------------


DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  artistID INT,
  genreID INT,
  releaseYear INT
);

DROP TABLE IF EXISTS Song;
CREATE TABLE Song(
  id INT PRIMARY KEY,
  title VARCHAR(255),
  artistID INT,
  genreID INT,
  albumID INT,
  releaseYear INT
);

DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist(
  id INT PRIMARY KEY,
  name VARCHAR(255),
  albumID INT
);

DROP TABLE IF EXISTS Genre;
CREATE TABLE Genre(
  id INT PRIMARY KEY,
  type VARCHAR(50)
);

INSERT INTO Genre VALUES(2, 'Pop');

INSERT INTO Album VALUES(300, 'The 20/20 Experience', 300, 2, 2013)
INSERT INTO Album VALUES

INSERT INTO Song VALUES(2801, 'Pusher Love Girl', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2802, 'Suit & Tie feat. Jay-Z', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2803, 'Don’t Hold the Wall', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2804, 'Strawberry Bubblegum', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2805, 'Tunnel Vision', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2806, 'Spaceship Coup', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2807, 'That Girl', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2808, 'Let the Groove Get In', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2809, 'Mirrors', 300, 2, 300, 2013)
INSERT INTO Song VALUES(2810, 'Blue Ocean Roar', 300, 2, 300, 2013)

INSERT INTO Artist VALUES(300, 'Justin Timberlake', 300)
