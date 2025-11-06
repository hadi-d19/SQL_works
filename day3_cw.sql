-- You are helping an online store manager view product details from a products table. The table contains the following columns:
-- id (number)
-- name (text)
-- category (text)
-- price (number)
-- in_stock (text, either 'Yes' or 'No')
-- Your task is to:
-- Show all the unique product categories available in the table.
-- Select all products that are in stock and have a price less than 500.
-- Select all products that are not in stock or have a price greater than 1000.
-- Show the names and prices of all products, and sort the results by price from highest to lowest.
-- Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).

SELECT DISTINCT category FROM products;

SELECT * FROM products WHERE in_stock = 'Yes' AND price < 500;

SELECT * FROM products WHERE in_stock = 'No' OR price > 1000;

SELECT name, price FROM products ORDER BY price DESC;

SELECT name, price * 1.18 AS price_with_tax FROM products;

