-- You are helping manage a simple system for a local library. The librarian has two tables:
-- books – which stores book details
-- borrowers – which stores information about who borrowed which book
-- Your tasks are:
-- Show the list of all books along with the name of the person who borrowed them (if borrowed).
-- Show the list of all borrowers along with the book details they borrowed (if any).
-- Show the list of all books that have not been borrowed by anyone.
-- Show the list of all borrowers even if they haven't borrowed any book.-- books table
-- book_id | title
-- --------|-----------------
-- 1       | The Alchemist
-- 2       | The Power of Now
-- 3       | Think and Grow Rich
-- 4       | Clean Code

-- -- borrowers table
-- borrower_id | name        | book_id
-- ------------      |-------------  |--------
-- 101              | Alice         | 1
-- 102              | Bob          | 2
-- 103              | Charlie     | NULL

SELECT books.title,borrowers.name FROM books LEFT JOIN borrowers ON books.book_id = borrowers.book_id;

SELECT books.title,borrowers.name FROM books RIGHT JOIN borrowers ON books.book_id = borrowers.book_id;

SELECT books.title FROM books LEFT JOIN borrowers ON books.book_id = borrowers.book_id WHERE borrowers.book_id IS NULL;

SELECT * FROM borrowers;