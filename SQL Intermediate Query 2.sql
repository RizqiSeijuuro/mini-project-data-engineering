SELECT TOP 1 Employees.FirstName
FROM Orders
INNER JOIN Employees
    ON Orders.EmployeeID=Employees.EmployeeID
GROUP BY Employees.FirstName
ORDER BY COUNT(Orders.OrderID) DESC