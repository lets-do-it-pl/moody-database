if NOT EXISTS (SELECT 1 FROM dbo.ParameterItem WHERE [ParameterKey] = 'CategoryVersionNumber')
    INSERT INTO dbo.ParameterItem (ParameterKey)
    VALUES ('CategoryVersionNumber');
GO