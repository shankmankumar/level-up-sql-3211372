-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT Loans.PatronID, Patrons.FirstName, Patrons.Email, COUNT(Loans.PatronID) 
FROM Loans JOIN Patrons on Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID Order By Count(Loans.PatronID) ASC
LIMIT 9;