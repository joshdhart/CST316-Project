CREATE TABLE Song(

  songID INT PRIMARY KEY,

  title VARCHAR(255),

  artistID INT default null references Artist(artistID),

  genreID INT default null references Genre(genreID),

  albumID INT default null references Album(albumID),

  releaseYear INT default null,

  trackNum INT default null

);