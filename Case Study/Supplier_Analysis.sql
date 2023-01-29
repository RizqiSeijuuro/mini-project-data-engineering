SELECT ProductName, CategoryName, CompanyName, QuantityPerUnit, UnitsInStock
FROM Products
INNER JOIN Categories
ON Products.CategoryID=Categories.CategoryID
INNER JOIN Suppliers
ON Products.SupplierID=Suppliers.SupplierID
WHERE Discontinued=0