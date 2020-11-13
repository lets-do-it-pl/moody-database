CREATE TABLE [dbo].[CategoryDetail]
(
	[Id]           INT             NOT NULL     PRIMARY KEY,
	[CategoryId]   INT             NOT NULL,
    [Order]        INT             NOT NULL,
    [Image]        VARBINARY (MAX) NOT NULL,
    [CreateDate]   DATETIME2 (7)   NOT NULL,
    [ModifiedDate] DATETIME2 (7)   NULL,
    [IsDeleted]    BIT             NOT NULL,
    CONSTRAINT [FK_CategoryDetails_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
)
