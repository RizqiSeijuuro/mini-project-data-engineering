SELECT CompanyName, ProductName
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID=Orders.CustomerID
INNER JOIN [Order Details]
	ON Orders.OrderID=[Order Details].OrderID
INNER JOIN Products
	ON [Order Details].ProductID=Products.ProductID
WHERE ProductName='Chai' AND MONTH(OrderDate)=6 AND YEAR(OrderDate)=1997