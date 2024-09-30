CREATE DATABASE address_book_system;
USE address_book_system;
SELECT database();

CREATE TABLE AddressBookSystem(
id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
address VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
zip INT,
phoneNo VARCHAR(12),
email VARCHAR(100)
);

describe AddressBookSystem;