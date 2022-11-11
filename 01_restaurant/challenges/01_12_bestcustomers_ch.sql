-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT Customers.FirstName, Customers.LastName, Customers.Email,
COUNT(OrderID)
From Customers JOIN Orders ON Customers.CustomerID = 
Orders.CustomerID GROUP BY 
Orders.CustomerID ORDER BY COUNT(Orders.OrderID) DESC
LIMIT 10;