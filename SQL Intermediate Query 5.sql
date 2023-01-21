SELECT 
CASE 
	WHEN UnitPrice*Quantity <= 100 THEN 'Sales <= 100'
	WHEN UnitPrice*Quantity <= 250 THEN '101 < Sales <= 250'
	WHEN UnitPrice*Quantity <= 500 THEN '250 < Sales <= 500'
	ELSE 'Sales > 500'
END AS Sales, COUNT(OrderID) AS "Number of OrderID"
FROM "Order Details"
GROUP BY
CASE 
	WHEN UnitPrice*Quantity <= 100 THEN 'Sales <= 100'
	WHEN UnitPrice*Quantity <= 250 THEN '101 < Sales <= 250'
	WHEN UnitPrice*Quantity <= 500 THEN '250 < Sales <= 500'
	ELSE 'Sales > 500'
END;