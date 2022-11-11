-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
INSERT INTO CustomerReservations VALUES((SELECT CustomerID
From Customers where Email='atapley2j@kinetecoinc.com'), 4);

SELECT * FROM CustomerReservations;