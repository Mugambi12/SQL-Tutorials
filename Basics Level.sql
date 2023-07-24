-- Basics Level SQL Script Guide

-- Step 1: Create the database and switch to it
CREATE DATABASE bookstore;
USE bookstore;

-- Step 2: Create the 'books' table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    price DECIMAL(8,2)
);

-- Step 3: Create the 'authors' table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

-- Step 4: Insert data into 'authors' table
INSERT INTO authors (author_id, author_name)
VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Michael Johnson');

-- Step 5: Insert data into 'books' table
INSERT INTO books (book_id, title, author_id, price)
VALUES
    (101, 'Book 1', 1, 25.99),
    (102, 'Book 2', 2, 19.99),
    (103, 'Book 3', 1, 12.50),
    (104, 'Book 4', 3, 29.99),
    (105, 'Book 5', 2, 17.50);

-- Step 6: SELECT statement to retrieve data
-- Example 1: Retrieve all columns from the 'books' table
SELECT * FROM books;

-- Example 2: Retrieve specific columns from the 'books' table
SELECT book_id, title FROM books;

-- Example 3: Retrieve data with a condition using the WHERE clause
SELECT * FROM books WHERE price > 20.00;

-- Step 7: Sorting data using the ORDER BY clause
-- Example 1: Sort books by title in ascending order
SELECT * FROM books ORDER BY title ASC;

-- Example 2: Sort books by price in descending order
SELECT * FROM books ORDER BY price DESC;

-- Step 8: Filtering data using the WHERE clause
-- Example 1: Retrieve books by a specific author (John Doe)
SELECT * FROM books WHERE author_id = 1;

-- Example 2: Retrieve books with a price between $15 and $25
SELECT * FROM books WHERE price BETWEEN 15.00 AND 25.00;

-- Step 9: Aggregating data using basic functions
-- Example 1: Count the number of books in the 'books' table
SELECT COUNT(*) AS book_count FROM books;

-- Example 2: Calculate the average price of books
SELECT AVG(price) AS avg_price FROM books;

-- Step 10: Working with multiple tables using JOINs
-- Example 1: Retrieve books with author names
SELECT books.title, authors.author_name
FROM books
JOIN authors ON books.author_id = authors.author_id;

-- Example 2: Retrieve author names and the number of books they wrote
SELECT authors.author_name, COUNT(books.book_id) AS books_written
FROM authors
LEFT JOIN books ON authors.author_id = books.author_id
GROUP BY authors.author_name;

-- Step 11: Updating data using the UPDATE statement
-- Example: Update the price of Book 1 to $29.99
UPDATE books SET price = 29.99 WHERE book_id = 101;

-- Step 12: Deleting data using the DELETE statement
-- Example: Delete Book 5 from the 'books' table
DELETE FROM books WHERE book_id = 105;

-- Step 13: Understanding Data Definition Language (DDL)
-- Example 1: Adding a new column to the 'books' table
ALTER TABLE books ADD publication_year INT;

-- Example 2: Removing the 'publication_year' column from the 'books' table
ALTER TABLE books DROP COLUMN publication_year;

-- Step 14: Using the LIMIT clause to limit the number of results
-- Example: Retrieve the top 3 most expensive books
SELECT * FROM books ORDER BY price DESC LIMIT 3;

-- Step 15: Using the INSERT INTO SELECT statement
-- Example: Insert new books written by a specific author
INSERT INTO books (book_id, title, author_id, price)
SELECT 106, 'Book 6', 3, 22.50
UNION ALL
SELECT 107, 'Book 7', 2, 18.99;

-- Step 16: Using Subqueries
-- Example 1: Retrieve authors with books priced above the average price
SELECT author_id, author_name
FROM authors
WHERE author_id IN (
    SELECT author_id FROM books WHERE price > (SELECT AVG(price) FROM books)
);

-- Example 2: Retrieve authors with more than 1 book
SELECT author_id, author_name
FROM authors
WHERE author_id IN (
    SELECT author_id FROM books GROUP BY author_id HAVING COUNT(*) > 1
);

-- Step 17: Practice using Transactions
-- For demonstration purposes, you can create a transaction and roll it back.

-- Start a transaction
START TRANSACTION;

-- Perform data modifications
INSERT INTO books (book_id, title, author_id, price) VALUES (108, 'Book 8', 1, 14.99);
DELETE FROM books WHERE book_id = 102;

-- Commit the transaction
COMMIT;

-- Step 18: Revoke and Grant Permissions (For security considerations)
-- For example, we can revoke INSERT permissions from a specific user.
-- REVOKE INSERT ON books FROM 'username';

-- Step 19: Using the GROUP BY and HAVING clauses
-- Example: Retrieve authors and the total price of their books
SELECT authors.author_name, SUM(books.price) AS total_price
FROM authors
JOIN books ON authors.author_id = books.author_id
GROUP BY authors.author_name
HAVING total_price > 50.00;
