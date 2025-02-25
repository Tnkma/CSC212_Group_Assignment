-- Using the SQL script from Task 3, create advanced queries to:

USE CSC212;
-- 1. Retrieve a list of the top 5 best-selling books.
SELECT
    b.id,
    b.title,
    COUNT(t.id) AS all_sales
FROM Books b
JOIN Transactions t ON b.id = t.book_id
WHERE t.status = 'Completed'
GROUP BY b.id, b.title
ORDER BY all_sales DESC
LIMIT 5;


-- Generate a summary report of total sales per genre.
SELECT 
    b.genre, 
    COUNT(t.id) AS total_books_sold,
    AVG(b.price) AS average_price,
    SUM(b.price) AS total_revenue
FROM Books b
JOIN Transactions t ON b.id = t.book_id
WHERE t.status = 'Completed'
GROUP BY b.genre
ORDER BY total_revenue DESC;



-- 3 Find users with no transactions.
SELECT u.id, u.name, u.email
FROM Users u
LEFT JOIN Transactions t ON u.id = t.buyer_id
WHERE t.id IS NULL;
