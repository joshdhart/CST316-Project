CREATE TABLE AlbumArt (
albumArtID INT PRIMARY KEY,
albumID INT references Album(albumID),
url VARCHAR(255)
);