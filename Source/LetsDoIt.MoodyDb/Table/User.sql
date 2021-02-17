CREATE TABLE [dbo].[User]
(
	[Id]			INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	[Password]		VARCHAR(1000)	NOT NULL,
	[FullName]		VARCHAR(500)	NOT NULL,
	[Email]			VARCHAR(500)	NOT NULL	UNIQUE,
	[IsActive]		BIT				NOT NULL	DEFAULT		0,
	[CanLogin]		BIT				NOT NULL	DEFAULT		0,
	[UserType]		CHAR(1)			NOT NULL	DEFAULT		'S',
	[CreatedDate]	DATETIME		NOT NULL	DEFAULT		GETDATE(),
	[CreatedBy]		INT				NOT NULL,
	[ModifiedDate]	DATETIME		NULL,
	[ModifiedBy]	INT				NULL,
	[IsDeleted]		BIT				NOT NULL	DEFAULT		0, 
    [Description] VARCHAR(MAX) NULL
)
