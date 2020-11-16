CREATE TABLE [dbo].[VersionHistory]
(
	[Id]                BIGINT         NOT NULL     PRIMARY KEY,	
    [VersionNumber]     NVARCHAR (100) NOT NULL,
    [CreatedDate]       DATETIME2 (7)  NOT NULL
)
