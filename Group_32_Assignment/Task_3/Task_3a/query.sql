-- Group_32_Assignment


USE CSC212;

-- 1 Retrieving all books of a specific genre with a rating above 4
SELECT b.id, b.title, b.author, b.genre, AVG(r.rating) AS avg_rating 
FROM Books b 
JOIN Reviews r ON b.id = r.book_id 
WHERE b.genre = 'romance' 
GROUP BY b.id HAVING avg_rating > 4;


-- 2 Finding all users who have listed more than three books.
SELECT u.id, u.name, u.email, 
COUNT(b.id) AS total_books_listed 
FROM Users u 
JOIN Books b ON u.id = b.seller_id 
GROUP BY u.id 
HAVING total_books_listed >= 1;

-- 3 Listing all transactions for books priced above $50
SELECT t.id, t.book_id, b.price AS transaction_amount, t.seller_id, t.buyer_id, t.payment_method, t.status 
FROM Transactions t 
JOIN Books b ON t.book_id = b.id 
WHERE b.price > 50;

