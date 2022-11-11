-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
DELETE FROM Reservations where CustomerID=
(SELECT CustomerID from Customers where FirstName='Norby')
AND Date>'2022-07-24';
SELECT * FROM Reservations where CustomerID=(SELECT CustomerID 
from Customers where FirstName='Norby')
AND Date>'2022-07-24';