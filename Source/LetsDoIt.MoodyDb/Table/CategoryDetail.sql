CREATE TABLE [dbo].[CategoryDetail]
(
	[Id]			INT             NOT NULL     PRIMARY KEY,
	[CategoryId]	INT             NOT NULL,
    [Order]			INT             NOT NULL,
    [Image]			VARBINARY (MAX) NOT NULL,
	[CreatedDate]	DATETIME		NOT NULL	DEFAULT GETDATE(),
	[CreatedBy]		VARCHAR(500)	NOT NULL,
	[ModifiedDate]	DATETIME		NULL,
	[ModifiedBy]	VARCHAR(500)	NULL,
	[IsDeleted]		BIT				NOT NULL	DEFAULT 0
    CONSTRAINT [FK_CategoryDetails_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
)
