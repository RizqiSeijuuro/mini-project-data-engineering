SELECT CompanyName
FROM Suppliers
INNER JOIN Products
    ON Suppliers.SupplierID=Products.SupplierID
WHERE ProductName='Chai'