-- Determine which sales people made no sales
SELECT sp.SalespersonID, sp.FirstName, sp.LastName,
o.Status
FROM Salesperson sp
  LEFT JOIN Orders o 
    ON sp.SalespersonID = o.SalespersonID
WHERE o.SalespersonID IS NULL
