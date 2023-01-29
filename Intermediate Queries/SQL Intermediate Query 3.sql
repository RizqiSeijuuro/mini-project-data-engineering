SELECT 
	TOP 5 Products.ProductName AS [Product Name], 
	COUNT([Order Details].Quantity) AS [Total Quantity]
FROM [Order Details]
INNER JOIN Products
    ON [Order Details].ProductID=Products.ProductID
INNER JOIN Orders
    ON [Order Details].OrderID=Orders.OrderID
WHERE YEAR(Orders.OrderDate)=1997 AND MONTH(Orders.OrderDate)=1
GROUP BY ProductName
ORDER BY COUNT([Order Details].Quantity) DESC