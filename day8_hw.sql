-- Imagine you are helping a small bookstore manage their online inventory system.
--  Your job is to set up the database structure for their books and authors. Follow these steps:
-- Create a new database called BookStoreDB.
-- Select this database to work on.
-- Create a table named authors with the following columns:
-- author_id (number, primary key)
-- name (text)
-- country (text)
-- Create another table named books with the following columns:
-- book_id (number, primary key)
-- title (text)
-- price (number)
-- author_id (foreign key referencing authors)
-- Add a new column called published_year (number) to the books table.
-- Delete all rows from the books table without removing the table itself.
-- Remove the BookStoreDB completely from the system.

CREATE DATABASE BookStoreDB;
USE BookStoreDB;

CREATE TABLE authors (author_id INT PRIMARY KEY, name VARCHAR(255),country VARCHAR(255));

CREATE TABLE books (book_id INT PRIMARY KEY,title VARCHAR(255),price DECIMAL(10,2),author_id INT,
FOREIGN KEY (author_id) REFERENCES authors (author_id));

ALTER TABLE books ADD published_year INT;

TRUNCATE TABLE books;

DROP DATABASE BookStoreDB;

