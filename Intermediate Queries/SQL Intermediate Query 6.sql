SELECT DISTINCT(CompanyName)
FROM Orders
INNER JOIN Customers
	ON Orders.CustomerID=Customers.CustomerID
INNER JOIN "Order Details"
	ON Orders.OrderID="Order Details".OrderID
WHERE UnitPrice*Quantity>500 AND YEAR(OrderDate)=1997;