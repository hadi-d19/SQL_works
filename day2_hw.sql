-- You are helping a college library manage its books table. The table has the following columns:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- genre (text)
-- Complete the following tasks using only the allowed SQL methods and operators:
-- Insert 5 different books into the books table using the INSERT INTO command. Use different values for title, author, price, and genre.
-- Select all books that have a price greater than 400.
-- Select all books where the genre is either 'History', 'Science', or 'Fiction'.
-- Select the book where the title is exactly 'The Great Gatsby'.
-- Select all books that are not written by 'Dan Brown'.

INSERT INTO books VALUES(1,'Atomic Habits','James Clear',840,'Personal Development'),
(2,'The Silent Patient','Alex Michaelides',150,'Psychological Thriller'),
(3,'Dune','Frank Herbert',540,'Science'),
(4,'The Great Gatsby','Delia Owens',390,'History'),
(5,'The Midnight Library','Dan Brown',190,'Fiction');

SELECT * FROM books WHERE price > 400;
SELECT * FROM books WHERE genre IN('Science','History','Fiction');

Select * FROM books WHERE title = 'The Great Gatsby';

SELECT * FROM books WHERE author <> 'Dan Brown';
