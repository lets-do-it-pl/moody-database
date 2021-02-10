CREATE TABLE [dbo].[ParameterItem]
(
    [Id]            INT             NOT NULL    PRIMARY KEY IDENTITY(1,1),
    [ParameterKey] VARCHAR (100) NOT NULL UNIQUE,
    [ParameterValue]     VARCHAR (100)  NULL,
    [CreatedDate]   DATETIME        NOT NULL    DEFAULT GETDATE(),
    [ModifiedDate]  DATETIME        NULL,
    [ModifiedBy]    INT             NULL,
)
