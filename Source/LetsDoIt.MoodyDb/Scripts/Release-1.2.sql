IF NOT EXISTS (SELECT 1 FROM dbo.ParameterItem WHERE [ParameterKey] = 'CategoryVersionNumber')
BEGIN    
    INSERT INTO dbo.ParameterItem (ParameterKey)
    VALUES ('CategoryVersionNumber');
END
GO