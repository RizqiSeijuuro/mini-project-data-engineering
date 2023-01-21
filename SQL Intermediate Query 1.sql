WITH temp AS (
	SELECT MONTH(Orders.OrderDate) AS MonthNumber, COUNT(Orders.CustomerID) AS NCustomer, DATENAME(month, DATEADD( MONTH, MONTH(Orders.OrderDate),0)-1) AS Month
	FROM Orders
	WHERE YEAR(Orders.OrderDate)=1997
	GROUP BY MONTH(Orders.OrderDate)
)

SELECT Month, NCustomer AS "Number of Customer"
FROM temp;
