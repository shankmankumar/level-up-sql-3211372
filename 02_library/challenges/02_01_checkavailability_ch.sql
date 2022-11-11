-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT (SELECT COUNT(BookID) FROM Books where Title='Dracula')
- (SELECT Count(BookID) From Loans where (BookID IN (SELECT BookID
FROM Books where Title='Dracula') AND ReturnedDate is null))
AS Available; 