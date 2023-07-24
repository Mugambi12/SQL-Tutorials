-- Intermediary Level SQL Script Guide

-- Step 1: Working with Advanced Querying
-- Example 1: Retrieve the top-selling author and their total sales amount
SELECT authors.author_id, authors.author_name, COUNT(books.book_id) AS book_count, SUM(books.price) AS total_sales
FROM authors
JOIN books ON authors.author_id = books.author_id
GROUP BY authors.author_id, authors.author_name
ORDER BY total_sales DESC
LIMIT 1;

-- Example 2: Calculate the percentage of books sold for each author with at least 3 books
SELECT authors.author_name,
       COUNT(books.book_id) AS total_books,
       (COUNT(books.book_id) / NULLIF((SELECT COUNT(*) FROM books), 0) * 100) AS percentage_sold
FROM authors
JOIN books ON authors.author_id = books.author_id
GROUP BY authors.author_name
HAVING total_books >= 3;

-- Step 2: Database Design and Normalization
-- Consider normalizing the database by breaking it into multiple tables to minimize data redundancy.

-- Step 3: Creating Views for Simplifying Complex Queries
-- Example 1: Create a view to retrieve book details along with the author's name and total books written
CREATE VIEW book_details_with_author AS
SELECT books.book_id, books.title, authors.author_name, COUNT(*) AS total_books_written
FROM books
JOIN authors ON books.author_id = authors.author_id
GROUP BY books.book_id, books.title, authors.author_name;

-- Example 2: Create a view to get the top-selling authors
CREATE VIEW top_selling_authors AS
SELECT authors.author_id, authors.author_name, COUNT(books.book_id) AS book_count
FROM authors
JOIN books ON authors.author_id = books.author_id
GROUP BY authors.author_id, authors.author_name
ORDER BY book_count DESC
LIMIT 5;

-- Step 4: Designing and Optimizing Indexes
-- Example: Create an index on the 'author_name' column for faster searching
CREATE INDEX idx_author_name ON authors (author_name);

-- Step 5: Working with Triggers
-- Example: Create a trigger to update the 'last_updated' column when a book's price changes
DELIMITER //
CREATE TRIGGER update_last_updated
AFTER UPDATE ON books
FOR EACH ROW
BEGIN
    IF NEW.price <> OLD.price THEN
        UPDATE books SET last_updated = NOW() WHERE book_id = NEW.book_id;
    END IF;
END;
//
DELIMITER ;

-- Step 6: Stored Procedures and Functions
-- Example 1: Create a stored procedure to get book details by price range
DELIMITER //
CREATE PROCEDURE GetBooksByPriceRange (IN min_price DECIMAL(8,2), IN max_price DECIMAL(8,2))
BEGIN
    SELECT * FROM books WHERE price BETWEEN min_price AND max_price;
END;
//
DELIMITER ;

-- Example 2: Create a function to calculate the total price of books by an author
DELIMITER //
CREATE FUNCTION CalculateTotalPriceByAuthor (author_id INT)
RETURNS DECIMAL(8,2)
BEGIN
    DECLARE total_price DECIMAL(8,2);
    SELECT SUM(price) INTO total_price FROM books WHERE author_id = author_id;
    RETURN total_price;
END;
//
DELIMITER ;

-- Step 7: Isolation Levels and Dealing with Concurrency
-- Understand and set appropriate isolation levels to handle concurrent data access.

-- Step 8: Performance Optimization Techniques
-- Example: Analyzing the query execution plan to optimize queries
EXPLAIN SELECT * FROM books WHERE price > 20.00;

-- Step 9: Advanced SQL Techniques
-- Example 1: Use of Recursive SQL to create hierarchical data
WITH RECURSIVE category_tree AS (
    SELECT category_id, category_name, parent_category_id
    FROM categories
    WHERE category_id = 1
    UNION ALL
    SELECT c.category_id, c.category_name, c.parent_category_id
    FROM categories c
    JOIN category_tree ct ON c.parent_category_id = ct.category_id
)
SELECT * FROM category_tree;

-- Example 2: Dynamic SQL for Pivoting Data
SET @pivot_column := 'author_name';
SET @query := CONCAT('SELECT * FROM books PIVOT (MAX(price) FOR author_name IN (', (SELECT GROUP_CONCAT(DISTINCT author_name) FROM books), ')) AS p');
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Step 10: Real-World Projects
-- Work on complex projects that involve database design, performance optimization, and advanced querying.

-- Step 11: Database Administration Tasks
-- Perform regular backups, monitor database performance, and ensure high availability.

-- Step 12: Integration of SQL and NoSQL databases
-- Understand when to use SQL databases and when to use NoSQL databases, and how to integrate them.

-- Step 13: Practice and Real-World Challenges
-- Keep practicing SQL queries and data manipulation to enhance your skills further.

-- Step 14: NoSQL and SQL Integration
-- Understand the differences between SQL and NoSQL databases and when to use each.

-- Step 15: Real-World Projects
-- Continue working on more complex and real-world database projects to solidify your knowledge.

-- Congratulations! You have completed the Intermediary Level SQL Script Guide.