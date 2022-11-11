-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424
SELECT BookID, Barcode, Title From Books where 
Barcode IN(6435968624,5677520613, 8730298424);

UPDATE Loans SET ReturnedDate = '2022-06-05' WHERE
BookID IN(SELECT BookID From Books WHERE Barcode
IN(6435968624, 5677520613, 8730298424))
AND ReturnedDate IS NULL;

SELECT * FROM Loans where BookID IN(46, 73, 105) 
--and LoanID IN (1991,1992,1999);
--1991, 1992, 1999