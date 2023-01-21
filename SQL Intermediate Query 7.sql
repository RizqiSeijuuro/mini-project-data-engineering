SELECT TOP 5 ProductName
FROM "Order Details"
INNER JOIN Products
	ON "Order Details".ProductID=Products.ProductID
INNER JOIN Orders
	ON "Order Details".OrderID=Orders.OrderID
WHERE YEAR(OrderDate)=1997
GROUP BY ProductName
ORDER BY SUM("Order Details".UnitPrice*Quantity)/12 DESC;