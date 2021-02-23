﻿IF NOT EXISTS (SELECT 1 FROM [dbo].[User] AS u WHERE u.Email = 'moodydevteam@outlook.com' and u.IsDeleted = 0)
BEGIN
	
	INSERT INTO [dbo].[User] (			
		[Password], 
		[FullName], 
		[Email], 
		[IsActive], 
		[CanLogin], 
		[UserType], 
		[CreatedDate], 
		[CreatedBy], 
		[ModifiedDate], 
		[ModifiedBy], 
		[IsDeleted])
	VALUES ( 
		N'5rnrmkSohgVCXjxOnd4JhoEHeDST25NPiAOFbBx3SFk=', 
		N'Moody Dev Team', 
		N'moodydevteam@outlook.com', 
		1, 
		1, 
		N'A', 
		GETDATE(), 
		0, 
		NULL, 
		NULL, 
		0);
END
GO