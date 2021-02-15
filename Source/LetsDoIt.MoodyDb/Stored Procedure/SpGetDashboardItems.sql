CREATE PROCEDURE [dbo].[SpGetDashboardItems] AS
SELECT 'TotalCategoryCount' AS Name,
       COUNT(1) AS TotalNumber
FROM Category
WHERE IsDeleted = 0
UNION
SELECT 'TotalCategoryDetailCount' AS Name,
       COUNT(1) AS TotalNumber
FROM CategoryDetail
WHERE IsDeleted = 0
UNION
SELECT 'TotalRegisteredClientCount' AS Name,
       COUNT(1) AS TotalNumber
FROM Client
UNION
SELECT 'AverageRegisteredClientCount' AS Name,
       AVG(dcc.DailyCreatedUserCount) AS TotalNumber
FROM
  (SELECT Count(1) AS DailyCreatedUserCount
   FROM [User] AS u
   WHERE u.IsDeleted = 0
   GROUP BY CONVERT(DATE, u.CreatedDate)) AS dcc