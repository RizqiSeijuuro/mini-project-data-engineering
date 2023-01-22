SELECT MONTH(OrderDate) AS Month, STRING_AGG(ProductName, ',') WITHIN GROUP (ORDER BY SUM("Order Details".UnitPrice*Quantity))
FROM [Order Details]
INNER JOIN Products
	ON [Order Details].ProductID=Products.ProductID
INNER JOIN Orders
	ON [Order Details].OrderID=Orders.OrderID
WHERE YEAR(OrderDate)=1997
GROUP BY MONTH(OrderDate)