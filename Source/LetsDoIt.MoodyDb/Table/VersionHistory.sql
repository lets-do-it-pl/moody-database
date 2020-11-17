CREATE TABLE [dbo].[VersionHistory]
(
	[Id]                BIGINT         NOT NULL     PRIMARY KEY IDENTITY(1,1),	
    [VersionNumber]     NVARCHAR (100) NOT NULL,
    [CreatedDate]       DATETIME2 (7)  NOT NULL
)
