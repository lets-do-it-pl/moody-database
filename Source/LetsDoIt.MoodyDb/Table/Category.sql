CREATE TABLE [dbo].[Category]
(
	[Id]			INT				NOT NULL	PRIMARY KEY,
	[Name]			VARCHAR(500)	NOT NULL,
	[Order]			INT				NOT NULL,
	[Image]			VARBINARY(MAX)	NOT NULL,	
	[CreatedDate]	DATETIME		NOT NULL	DEFAULT GETDATE(),
	[CreatedBy]		INT				NOT NULL,
	[ModifiedDate]	DATETIME		NULL,
	[ModifiedBy]	INT				NULL,
	[IsDeleted]		BIT				NOT NULL	DEFAULT 0
)
