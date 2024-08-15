-- Find sales by month and year
SELECT 
MONTHNAME(CreationDate) as MonthName,
YEAR(CreationDate) as OrderYear,
COUNT(Orders.OrderID) as TotalOrders,
SUM(Quantity) as TotalQty,
SUM(TotalDue) as TotalAmtDue
FROM Orders
LEFT OUTER JOIN OrderItem
  on OrderItem.OrderID = Orders.OrderID
GROUP BY MonthName, OrderYear
ORDER BY OrderYear, MONTH(CreationDate);