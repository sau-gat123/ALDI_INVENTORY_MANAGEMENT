SELECT 
    ProductName,
    Category,
    UnitPrice
FROM Product
WHERE UnitPrice > 5
ORDER BY UnitPrice DESC;
