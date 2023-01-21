CREATE PROCEDURE Invoice @CustID nchar(5)
AS
    SELECT Customers.CustomerID, ContactName, OrderID, OrderDate, RequiredDate, ShippedDate
	FROM Orders
	INNER JOIN Customers
		ON Orders.CustomerID=Customers.CustomerID
	WHERE Customers.CustomerID=@CustID;
GO