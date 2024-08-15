-- Find average daily sales
SELECT 
SUM(Quantity) / COUNT(DISTINCT CreationDate) as AvgDailySales
FROM Orders o
LEFT OUTER JOIN OrderItem oi 
  ON o.OrderID = oi.OrderID