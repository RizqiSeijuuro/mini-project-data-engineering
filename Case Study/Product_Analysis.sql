SELECT [Order Details].UnitPrice*Quantity AS Sales, ProductName, CategoryName, ContactName, City, MONTH(OrderDate) AS Month
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID
INNER JOIN [Order Details]
ON Orders.OrderID=[Order Details].OrderID
INNER JOIN Products
ON [Order Details].ProductID=Products.ProductID
INNER JOIN Categories
ON Products.CategoryID=Categories.CategoryID
WHERE YEAR(OrderDate)=1997
ORDER BY MONTH(OrderDate)