CREATE TABLE [dbo].[Category]
(
	[Id]			INT				NOT NULL	PRIMARY KEY IDENTITY(1,1),
	[Name]			VARCHAR(500)	NOT NULL,
	[Description]	VARCHAR(MAX)	NULL,
	[Order]			DECIMAL(18,5)	NOT NULL	UNIQUE,
	[Image]			VARBINARY(MAX)	NOT NULL,	
	[CreatedDate]	DATETIME		NOT NULL	DEFAULT GETDATE(),
	[CreatedBy]		INT				NOT NULL,
	[ModifiedDate]	DATETIME		NULL,
	[ModifiedBy]	INT				NULL,
	[IsDeleted]		BIT				NOT NULL	DEFAULT 0
)
