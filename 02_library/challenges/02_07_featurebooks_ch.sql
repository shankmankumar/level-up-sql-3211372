-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT Books.Title, Books.Barcode FROM Books JOIN Loans 
ON Books.BookID = Loans.BookID where 
Published BETWEEN '1890' AND '1899' 
AND Loans.ReturnedDate IS NOT NULL
GROUP BY Books.Title;