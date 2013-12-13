
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/07/2013 21:05:14
-- Generated from EDMX file: C:\Users\Chase\Dropbox\MusicLibrary\MusicLibrary\Models\MusicLibrayDBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MusicLibraryDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Album__artistID__412EB0B6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK__Album__artistID__412EB0B6];
GO
IF OBJECT_ID(N'[dbo].[FK__Album__genreID__4222D4EF]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK__Album__genreID__4222D4EF];
GO
IF OBJECT_ID(N'[dbo].[FK__AlbumArt__albumI__4316F928]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AlbumArts] DROP CONSTRAINT [FK__AlbumArt__albumI__4316F928];
GO
IF OBJECT_ID(N'[dbo].[FK__Song__albumID__48CFD27E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK__Song__albumID__48CFD27E];
GO
IF OBJECT_ID(N'[dbo].[FK__Song__artistID__46E78A0C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK__Song__artistID__46E78A0C];
GO
IF OBJECT_ID(N'[dbo].[FK__Song__genreID__47DBAE45]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK__Song__genreID__47DBAE45];
GO
IF OBJECT_ID(N'[dbo].[FK_PlaylistSong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Songs] DROP CONSTRAINT [FK_PlaylistSong];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Albums]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Albums];
GO
IF OBJECT_ID(N'[dbo].[AlbumArts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlbumArts];
GO
IF OBJECT_ID(N'[dbo].[Artists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Artists];
GO
IF OBJECT_ID(N'[dbo].[Genres]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Genres];
GO
IF OBJECT_ID(N'[dbo].[Playlists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Playlists];
GO
IF OBJECT_ID(N'[dbo].[Songs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Songs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [albumID] int  NOT NULL,
    [name] varchar(255)  NULL,
    [artistID] int  NULL,
    [genreID] int  NULL,
    [releaseYear] int  NULL
);
GO

-- Creating table 'AlbumArts'
CREATE TABLE [dbo].[AlbumArts] (
    [albumArtID] int  NOT NULL,
    [albumID] int  NULL,
    [url] varchar(255)  NULL
);
GO

-- Creating table 'Artists'
CREATE TABLE [dbo].[Artists] (
    [artistID] int  NOT NULL,
    [name] varchar(255)  NULL
);
GO

-- Creating table 'Genres'
CREATE TABLE [dbo].[Genres] (
    [genreID] int  NOT NULL,
    [type] varchar(50)  NULL
);
GO

-- Creating table 'Playlists'
CREATE TABLE [dbo].[Playlists] (
    [playlistID] varchar(255)  NOT NULL,
    [playlistName] varchar(50)  NULL,
    [songID] int  NULL
);
GO

-- Creating table 'Songs'
CREATE TABLE [dbo].[Songs] (
    [songID] int  NOT NULL,
    [title] varchar(255)  NULL,
    [artistID] int  NULL,
    [genreID] int  NULL,
    [albumID] int  NULL,
    [releaseYear] int  NULL,
    [trackNum] int  NULL,
    [Playlist_playlistID] varchar(255)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [albumID] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([albumID] ASC);
GO

-- Creating primary key on [albumArtID] in table 'AlbumArts'
ALTER TABLE [dbo].[AlbumArts]
ADD CONSTRAINT [PK_AlbumArts]
    PRIMARY KEY CLUSTERED ([albumArtID] ASC);
GO

-- Creating primary key on [artistID] in table 'Artists'
ALTER TABLE [dbo].[Artists]
ADD CONSTRAINT [PK_Artists]
    PRIMARY KEY CLUSTERED ([artistID] ASC);
GO

-- Creating primary key on [genreID] in table 'Genres'
ALTER TABLE [dbo].[Genres]
ADD CONSTRAINT [PK_Genres]
    PRIMARY KEY CLUSTERED ([genreID] ASC);
GO

-- Creating primary key on [playlistID] in table 'Playlists'
ALTER TABLE [dbo].[Playlists]
ADD CONSTRAINT [PK_Playlists]
    PRIMARY KEY CLUSTERED ([playlistID] ASC);
GO

-- Creating primary key on [songID] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [PK_Songs]
    PRIMARY KEY CLUSTERED ([songID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [artistID] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK__Album__artistID__412EB0B6]
    FOREIGN KEY ([artistID])
    REFERENCES [dbo].[Artists]
        ([artistID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Album__artistID__412EB0B6'
CREATE INDEX [IX_FK__Album__artistID__412EB0B6]
ON [dbo].[Albums]
    ([artistID]);
GO

-- Creating foreign key on [genreID] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK__Album__genreID__4222D4EF]
    FOREIGN KEY ([genreID])
    REFERENCES [dbo].[Genres]
        ([genreID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Album__genreID__4222D4EF'
CREATE INDEX [IX_FK__Album__genreID__4222D4EF]
ON [dbo].[Albums]
    ([genreID]);
GO

-- Creating foreign key on [albumID] in table 'AlbumArts'
ALTER TABLE [dbo].[AlbumArts]
ADD CONSTRAINT [FK__AlbumArt__albumI__4316F928]
    FOREIGN KEY ([albumID])
    REFERENCES [dbo].[Albums]
        ([albumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__AlbumArt__albumI__4316F928'
CREATE INDEX [IX_FK__AlbumArt__albumI__4316F928]
ON [dbo].[AlbumArts]
    ([albumID]);
GO

-- Creating foreign key on [albumID] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK__Song__albumID__48CFD27E]
    FOREIGN KEY ([albumID])
    REFERENCES [dbo].[Albums]
        ([albumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Song__albumID__48CFD27E'
CREATE INDEX [IX_FK__Song__albumID__48CFD27E]
ON [dbo].[Songs]
    ([albumID]);
GO

-- Creating foreign key on [artistID] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK__Song__artistID__46E78A0C]
    FOREIGN KEY ([artistID])
    REFERENCES [dbo].[Artists]
        ([artistID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Song__artistID__46E78A0C'
CREATE INDEX [IX_FK__Song__artistID__46E78A0C]
ON [dbo].[Songs]
    ([artistID]);
GO

-- Creating foreign key on [genreID] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK__Song__genreID__47DBAE45]
    FOREIGN KEY ([genreID])
    REFERENCES [dbo].[Genres]
        ([genreID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Song__genreID__47DBAE45'
CREATE INDEX [IX_FK__Song__genreID__47DBAE45]
ON [dbo].[Songs]
    ([genreID]);
GO

-- Creating foreign key on [Playlist_playlistID] in table 'Songs'
ALTER TABLE [dbo].[Songs]
ADD CONSTRAINT [FK_PlaylistSong]
    FOREIGN KEY ([Playlist_playlistID])
    REFERENCES [dbo].[Playlists]
        ([playlistID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlaylistSong'
CREATE INDEX [IX_FK_PlaylistSong]
ON [dbo].[Songs]
    ([Playlist_playlistID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------