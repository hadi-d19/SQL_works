-- You are designing a basic inventory system for a library. Your task is to:
-- Create a table named authors with the following:
-- author_id which should increase automatically for every new author added
-- name of the author
-- Create another table named books with the following:
-- book_id which should also increase automatically
-- title of the book
-- author_id which connects each book to an author
-- Make sure that one author can have many books (one-to-many relationship).
-- Create an index on the author_id column in the books table to improve search performance.


CREATE TABLE authors (author_id INT PRIMARY KEY AUTO_INCREMENT,name VARCHAR(255) NOT NULL);

CREATE TABLE books (book_id INT PRIMARY KEY AUTO_INCREMENT,title VARCHAR(255) NOT NULL,author_id INT,
FOREIGN KEY(author_id) REFERENCES authors(author_id),INDEX(author_id));
