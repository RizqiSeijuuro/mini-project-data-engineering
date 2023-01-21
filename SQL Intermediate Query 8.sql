CREATE VIEW ProductOrder AS
    SELECT OrderID, Products.ProductID, ProductName, "Order Details".UnitPrice, Quantity, Discount, "Order Details".UnitPrice-Discount AS "Price after Discount"
    FROM "Order Details"
    INNER JOIN Products
        ON "Order Details".ProductID=Products.ProductID