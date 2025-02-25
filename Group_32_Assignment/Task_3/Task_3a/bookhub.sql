-- Group_32_Assignment

CREATE TABLE Users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre ENUM('Romance', 'Suspense', 'Mystery', 'Horror', 'Fantasy') NOT NULL,
    book_condition ENUM('New', 'Like New', 'Good', 'Old') DEFAULT 'New',
    price DECIMAL(10, 2) NOT NULL,
    seller_id INT,
    book_content_url VARCHAR(255) NOT NULL,
    book_description TEXT,
    listing_type ENUM('Buy', 'Sell', 'Exchange') DEFAULT 'Sell',
    status ENUM('Available', 'Sold', 'Exchange', 'Deleted') DEFAULT 'Available',
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES Users(id)
);

CREATE TABLE Transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    seller_id INT,
    buyer_id INT,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('Credit_card', 'Debit_card', 'Paypal') DEFAULT 'Credit_card',
    status ENUM('Pending', 'Completed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (buyer_id) REFERENCES Users(id),
    FOREIGN KEY (seller_id) REFERENCES Users(id)
);

CREATE TABLE Reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    reviewer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment VARCHAR(255),
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (reviewer_id) REFERENCES Users(id)
);
