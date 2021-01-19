CREATE PROCEDURE [dbo].[SpGeneralSearch]
	@searchKey varchar(500)
AS

	SELECT 'Category' AS [Type], Name
	FROM Category	
	WHERE IsDeleted = 0 AND  Category.Name Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS

	UNION ALL

	SELECT 'User' AS [Type], Username AS Name
	FROM [dbo].[User] AS u
	WHERE u.IsDeleted = 0 AND u.Username Like  @searchKey + '%' COLLATE SQL_Latin1_General_CP1_CI_AS