-- Find top 3 items sold
SELECT p.Variety, p.Size, sum(oi.Quantity) as TotalQty
FROM OrderItem oi 
LEFT JOIN Product p
  ON oi.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY TotalQty DESC
LIMIT 3;