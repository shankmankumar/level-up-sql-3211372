-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
SELECT PatronID FROM Patrons where FirstName='Jack' AND 
LastName='Vaan';

SELECT BookID, Title, Barcode From Books where Title = 'The Picture of Dorian Gray'
or Title = 'Great Expectations';

SELECT DISTINCT(BookID) FROM Loans where BookID in (SELECT BookID From Books WHERE
Title = 'The Picture of Dorian Gray' or Title = 'Great Expectations')
AND ReturnedDate is not null ORDER BY BookID ASC Limit 1;

INSERT INTO Loans(BookID, PatronID, LoanDate, DueDate, ReturnedDate)
VALUES((SELECT BookID FROM Books where Barcode='2855934983'),(SELECT PatronID FROM Patrons where FirstName='Jack' AND 
LastName='Vaan'),'2022-08-25','2022-09-08', null), ((SELECT BookID FROM Books where Barcode='4043822646'), 
(SELECT PatronID FROM Patrons where FirstName='Jack' and LastName='Vaan'), '2022-08-25',
'2022-09-08', null);
SELECT * FROM Loans ORDER BY LoanID DESC LIMIT 2;