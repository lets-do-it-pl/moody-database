﻿CREATE PROCEDURE [dbo].[SpGeneralSearch]
	@searchKey varchar(500)
AS

	SELECT 'Category' AS [Type], Name, Id
	FROM Category	
	WHERE IsDeleted = 0 AND  Category.Name Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS

	UNION ALL

	SELECT 'User' AS [Type], FullName AS Name, Id
	FROM [dbo].[User] AS u
	WHERE u.IsDeleted = 0 AND u.FullName Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS