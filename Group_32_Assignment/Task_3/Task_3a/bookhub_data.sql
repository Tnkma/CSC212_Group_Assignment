-- Group_32_Assignment
-- Description: This file contains the data to be inserted into the database tables for the BookHub application.


-- inserting user data for users table

INSERT INTO Users (name, email, password, phone_number, address)
VALUES
('John Doe', 'john@example.com', 'hashedpassword1', '123-456-7890', '123 Main St'),
('Alice Smith', 'alice@example.com', 'hashedpassword2', '987-654-3210', '456 Oak Ave'),
('Bob Johnson', 'bob@example.com', 'hashedpassword3', '555-666-7777', '789 Pine Rd'),
('Jane Adams', 'jane@example.com', 'hashedpassword4', '222-333-4444', '222 Cedar Ln'),
('Tom Brown', 'tom@example.com', 'hashedpassword5', '111-222-3333', '101 Birch St'),
('Emily Clark', 'emily@example.com', 'hashedpassword6', '999-888-7777', '303 Maple Ave'),
('Michael White', 'michael@example.com', 'hashedpassword7', '777-666-5555', '202 Elm St'),
('Sophia Green', 'sophia@example.com', 'hashedpassword8', '444-555-6666', '505 Spruce St'),
('David Black', 'david@example.com', 'hashedpassword9', '666-777-8888', '707 Willow Dr'),
('Emma Wilson', 'emma@example.com', 'hashedpassword10', '333-444-5555', '909 Aspen Rd');

-- inserting book data for books table
INSERT INTO Books (title, author, genre, book_condition, price, seller_id, book_content_url, book_description, listing_type, status)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Romance', 'New', 10.99, 1, 'url1', 'A classic novel set in the 1920s', 'Sell', 'Available'),
('1984', 'George Orwell', 'Suspense', 'Like new', 97.50, 2, 'url2', 'A novel about a dystopian future', 'Sell', 'Available'),
('To Kill a Mockingbird', 'Harper Lee', 'Mystery', 'Good', 12.75, 3, 'url3', 'A novel about racial injustice', 'Sell', 'Available'),
('The Catcher in the Rye', 'J.D. Salinger', 'Suspense', 'Old', 8.25, 4, 'url4', 'A story about teenage rebellion', 'Sell', 'Available'),
('Pride and Prejudice', 'Jane Austen', 'Romance', 'New', 150.00, 5, 'url5', 'A classic romance novel', 'Sell', 'Available'),
('Moby-Dick', 'Herman Melville', 'Horror', 'Like New', 14.99, 6, 'url6', 'A tale of obsession and revenge', 'Sell', 'Available'),
('War and Peace', 'Leo Tolstoy', 'Fantasy', 'Good', 78.50, 7, 'url7', 'A novel set during the Napoleonic wars', 'Sell', 'Available'),
('The Odyssey', 'Homer', 'Fantasy', 'Old', 91.75, 8, 'url8', 'An ancient Greek epic poem', 'Sell', 'Available'),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Mystery', 'New', 13.99, 9, 'url9', 'A psychological novel about guilt', 'Sell', 'Available'),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'Like New', 16.25, 10, 'url10', 'A fantasy novel about a hobbit', 'Sell', 'Available');


-- Inserting transaction data for transaction table
INSERT INTO Transactions (book_id, seller_id, buyer_id, payment_method, status)
VALUES
(1, 1, 2, 'Credit_card', 'Completed'),
(2, 2, 3, 'Debit_card', 'Pending'),
(3, 3, 4, 'Paypal', 'Completed'),
(4, 4, 5, 'Credit_card', 'Cancelled'),
(5, 5, 6, 'Debit_card', 'Completed'),
(6, 6, 7, 'paypal', 'pending'),
(7, 7, 8, 'Credit_card', 'Completed'),
(8, 8, 9, 'Debit_card', 'Pending'),
(9, 9, 10, 'Paypal', 'Completed'),
(10, 10, 1, 'Credit_card', 'Cancelled');


-- Inserting reviews data for books
INSERT INTO Reviews (book_id, reviewer_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing book! Highly recommended.'),
(2, 3, 4, 'Great read, but a bit slow at times.'),
(3, 4, 5, 'A masterpiece.'),
(4, 5, 3, 'Not what I expected, but okay.'),
(5, 6, 4, 'A very well-written novel.'),
(6, 7, 5, 'Loved the adventure!'),
(7, 8, 4, 'Interesting historical insights.'),
(8, 9, 3, 'Tough read, but rewarding.'),
(9, 10, 5, 'One of my favorites!'),
(10, 1, 4, 'Great storytelling.');
