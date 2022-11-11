-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
UPDATE Customers SET FavoriteDish=(SELECT DishID From Dishes
where Name='Quinoa Salmon Salad') where 
CustomerID=(SELECT CustomerID From Customers where
FirstName='Cleo' and LastName='Goldwater');