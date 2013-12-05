CREATE TABLE Album (

  albumID INT PRIMARY KEY,

  name VARCHAR(255),

  artistID INT default null references Artist(artistID),

  genreID INT default null references Genre(genreID),

  releaseYear INT default null

);