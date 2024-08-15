-- Find how many products sold
SELECT count(DISTINCT ProductID) as UniqueProducts,
SUM(Quantity) as TotalQty
FROM OrderItem