﻿CREATE TABLE [dbo].[Client]
(
	[Id] BIGINT NOT NULL PRIMARY KEY,
	[UserName] VARCHAR(250) NOT NULL,
	[Password] VARCHAR(1000) NOT NULL,
	[CreateDate] DATETIME NOT NULL DEFAULT GETDATE()
)
