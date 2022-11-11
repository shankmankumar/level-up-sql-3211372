-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT * FROM Customers where FirstName='Loretta'
AND LastName='Hundey';

INSERT INTO Orders(CustomerID, OrderDate) VALUES 
((SELECT OrderID From Customers where FirstName='Loretta'
and LastName='Hundey'), '2022-09-20 14:00:00');

INSERT INTO OrdersDishes (OrderID, DishID) VALUES
((SELECT OrderID From Orders where CustomerID=70 AND 
OrderDate='2022-09-20 14:00:00'), (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
((SELECT OrderID From Orders where CustomerID=70 AND 
OrderDate='2022-09-20 14:00:00'), (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
((SELECT OrderID From Orders where CustomerID=70 AND 
OrderDate='2022-09-20 14:00:00'), (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

SELECT * FROM OrdersDishes where OrderID=1001;

SELECT SUM(Dishes.Price) From Dishes JOIN OrdersDishes
ON Dishes.DishID = OrdersDishes.DishID 
where OrdersDishes.OrderID=1001;