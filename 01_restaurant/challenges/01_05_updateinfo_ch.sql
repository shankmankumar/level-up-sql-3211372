-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
SELECT CustomerID FROM Customers where Address='74 Pine St.';
Update Customers SET Address='74 Pine St.', City = 'New York',
State='NY' 
where CustomerID=26;
SELECT * FROM Customers where CustomerID=26;