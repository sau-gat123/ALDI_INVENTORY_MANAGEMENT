SELECT 
    it.TransactionID,
    p.ProductName,
    td.Quantity,
    it.TransactionType,
    it.TransactionDate,
    l.LocationName
FROM Inventory_Transaction it
JOIN Transaction_Detail td 
    ON it.TransactionID = td.TransactionID
JOIN Product p 
    ON td.ProductID = p.ProductID
JOIN Location l 
    ON it.LocationID = l.LocationID
ORDER BY it.TransactionDate;

