CREATE TABLE Playlist(

	playlistID VARCHAR(255) PRIMARY KEY,
	
	artistID int default null references Artist(artistID),
	
	albumID int default null references Album(albumID),
	
	genreID int default null references Genre(genreID)
	
);