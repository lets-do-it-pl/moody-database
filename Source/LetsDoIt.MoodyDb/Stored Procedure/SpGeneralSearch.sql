CREATE PROCEDURE [dbo].[SpGeneralSearch]
	@searchKey nvarchar(500)
AS

	SELECT 'Category' AS [Type], Name
	FROM Category	
	WHERE IsDeleted = 0 AND  Category.Name Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS

	UNION ALL

	SELECT 'User' AS [Type], Username AS Name
	FROM [dbo].[User]
	WHERE IsDeleted = 0 AND [dbo].[User].Username Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS