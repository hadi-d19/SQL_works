-- You are helping manage a small online bookstore's database. The table is called books, and it stores the following details:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- stock (number)
-- Perform the following tasks:
-- Add the following five books to the table:
-- (1, 'The Alchemist', 'Paulo Coelho', 350, 50)
-- (2, 'Atomic Habits', 'James Clear', 450, 40)
-- (3, 'The Psychology of Money', 'Morgan Housel', 400, 30)
-- (4, 'Ikigai', 'Francesc Miralles', 300, 60)
-- (5, 'Deep Work', 'Cal Newport', 500, 20)
-- Display all books that cost less than 450 and have stock more than 30.
-- Update the stock to 45 and reduce the price to 420 for the book titled ‘Deep Work’.
-- Delete the book titled ‘Ikigai’.
-- Show the average book price and total number of books currently in the table.
-- Display the top 3 most expensive books available.


INSERT INTO books VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM books WHERE price < 450 AND stock > 30;

UPDATE books SET stock=45, price = 420 WHERE title = 'Deep Work';

DELETE FROM books WHERE title = 'Ikigai';

SELECT AVG(price), COUNT(*) FROM books;

SELECT * FROM books ORDER BY price DESC LIMIT 3;