CREATE TABLE [dbo].[CategoryDetail]
(
	[Id]			INT             NOT NULL    PRIMARY KEY IDENTITY(1,1),
	[CategoryId]	INT             NOT NULL,
	[Order]			DECIMAL(18,5)   NOT NULL	UNIQUE,
	[Image]			VARBINARY (MAX) NOT NULL,
	[CreatedDate]	DATETIME		NOT NULL	DEFAULT GETDATE(),
	[CreatedBy]		INT				NOT NULL,
	[ModifiedDate]	DATETIME		NULL,
	[ModifiedBy]	INT				NULL,
	[IsDeleted]		BIT				NOT NULL	DEFAULT 0
	CONSTRAINT [FK_CategoryDetails_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
)
