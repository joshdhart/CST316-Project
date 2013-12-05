﻿/*
Deployment script for MusicLibraryDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "MusicLibraryDB"
:setvar DefaultFilePrefix "MusicLibraryDB"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating [dbo].[Album]...';


GO
CREATE TABLE [dbo].[Album] (
    [albumID]     INT           NOT NULL,
    [name]        VARCHAR (255) NULL,
    [artistID]    INT           NULL,
    [genreID]     INT           NULL,
    [releaseYear] INT           NULL,
    PRIMARY KEY CLUSTERED ([albumID] ASC)
);


GO
PRINT N'Creating [dbo].[AlbumArt]...';


GO
CREATE TABLE [dbo].[AlbumArt] (
    [albumArtID] INT           NOT NULL,
    [albumID]    INT           NULL,
    [url]        VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([albumArtID] ASC)
);


GO
PRINT N'Creating [dbo].[Artist]...';


GO
CREATE TABLE [dbo].[Artist] (
    [artistID] INT           NOT NULL,
    [name]     VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([artistID] ASC)
);


GO
PRINT N'Creating [dbo].[Genre]...';


GO
CREATE TABLE [dbo].[Genre] (
    [genreID] INT          NOT NULL,
    [type]    VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([genreID] ASC)
);


GO
PRINT N'Creating [dbo].[Playlist]...';


GO
CREATE TABLE [dbo].[Playlist] (
    [playlistID] VARCHAR (255) NOT NULL,
    [artistID]   INT           NULL,
    [albumID]    INT           NULL,
    [genreID]    INT           NULL,
    PRIMARY KEY CLUSTERED ([playlistID] ASC)
);


GO
PRINT N'Creating [dbo].[Song]...';


GO
CREATE TABLE [dbo].[Song] (
    [songID]      INT           NOT NULL,
    [title]       VARCHAR (255) NULL,
    [artistID]    INT           NULL,
    [genreID]     INT           NULL,
    [albumID]     INT           NULL,
    [releaseYear] INT           NULL,
    [trackNum]    INT           NULL,
    PRIMARY KEY CLUSTERED ([songID] ASC)
);


GO
PRINT N'Creating Default Constraint on [dbo].[Album]....';


GO
ALTER TABLE [dbo].[Album]
    ADD DEFAULT null FOR [artistID];


GO
PRINT N'Creating Default Constraint on [dbo].[Album]....';


GO
ALTER TABLE [dbo].[Album]
    ADD DEFAULT null FOR [genreID];


GO
PRINT N'Creating Default Constraint on [dbo].[Album]....';


GO
ALTER TABLE [dbo].[Album]
    ADD DEFAULT null FOR [releaseYear];


GO
PRINT N'Creating Default Constraint on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist]
    ADD DEFAULT null FOR [artistID];


GO
PRINT N'Creating Default Constraint on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist]
    ADD DEFAULT null FOR [albumID];


GO
PRINT N'Creating Default Constraint on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist]
    ADD DEFAULT null FOR [genreID];


GO
PRINT N'Creating Default Constraint on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song]
    ADD DEFAULT null FOR [artistID];


GO
PRINT N'Creating Default Constraint on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song]
    ADD DEFAULT null FOR [genreID];


GO
PRINT N'Creating Default Constraint on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song]
    ADD DEFAULT null FOR [albumID];


GO
PRINT N'Creating Default Constraint on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song]
    ADD DEFAULT null FOR [releaseYear];


GO
PRINT N'Creating Default Constraint on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song]
    ADD DEFAULT null FOR [trackNum];


GO
PRINT N'Creating Foreign Key on [dbo].[Album]....';


GO
ALTER TABLE [dbo].[Album] WITH NOCHECK
    ADD FOREIGN KEY ([artistID]) REFERENCES [dbo].[Artist] ([artistID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Album]....';


GO
ALTER TABLE [dbo].[Album] WITH NOCHECK
    ADD FOREIGN KEY ([genreID]) REFERENCES [dbo].[Genre] ([genreID]);


GO
PRINT N'Creating Foreign Key on [dbo].[AlbumArt]....';


GO
ALTER TABLE [dbo].[AlbumArt] WITH NOCHECK
    ADD FOREIGN KEY ([albumID]) REFERENCES [dbo].[Album] ([albumID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist] WITH NOCHECK
    ADD FOREIGN KEY ([artistID]) REFERENCES [dbo].[Artist] ([artistID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist] WITH NOCHECK
    ADD FOREIGN KEY ([albumID]) REFERENCES [dbo].[Album] ([albumID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Playlist]....';


GO
ALTER TABLE [dbo].[Playlist] WITH NOCHECK
    ADD FOREIGN KEY ([genreID]) REFERENCES [dbo].[Genre] ([genreID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song] WITH NOCHECK
    ADD FOREIGN KEY ([artistID]) REFERENCES [dbo].[Artist] ([artistID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song] WITH NOCHECK
    ADD FOREIGN KEY ([genreID]) REFERENCES [dbo].[Genre] ([genreID]);


GO
PRINT N'Creating Foreign Key on [dbo].[Song]....';


GO
ALTER TABLE [dbo].[Song] WITH NOCHECK
    ADD FOREIGN KEY ([albumID]) REFERENCES [dbo].[Album] ([albumID]);


GO
