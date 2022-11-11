-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT Published, COUNT(DISTINCT(Title)) FROM Books
GROUP BY Published
ORDER BY COUNT(DISTINCT(TITLE)) DESC;

SELECT Books.Title, COUNT(Books.Title) FROM Books JOIN
Loans ON Books.BookID = Loans.BookID
GROUP BY Books.Title ORDER BY COUNT(Loans.BookID)
DESC LIMIT 5; 