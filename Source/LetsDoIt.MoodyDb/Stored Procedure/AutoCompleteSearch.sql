CREATE PROCEDURE [dbo].[AutoCompleteSearch]
	@EnteredValue nvarchar(500)
AS
BEGIN
	SELECT UserName
	FROM Client
	WHERE Client.UserName Like  @EnteredValue + '%' 

	UNION  ALL

	SELECT Name
	FROM Category	
	WHERE Category.Name Like  @EnteredValue + '%' 

	UNION ALL

	SELECT Username
	FROM [dbo].[User]
	WHERE [dbo].[User].Username Like  @EnteredValue + '%' 

	END
RETURN 0
