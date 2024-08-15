-- Create new month columns
SELECT *,
month(CreationDate) as MonthNum,
monthname(CreationDate) as MonthName
FROM Orders