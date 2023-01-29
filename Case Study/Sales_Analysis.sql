SELECT FirstName, Title, City, COUNT(OrderID) AS Count_of_Order
FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
WHERE YEAR(OrderDate)=1997
GROUP BY FirstName, Title, City