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

INSERT INTO AddressBookSystem (firstname, lastname, address, city, state, zip, phoneNo, email)
VALUES ("Vishwajeet", "Bamane", "Talegaon","Pune", "Maharastra", "410507", "77777777", "vishwajeet@gmail.com"),
	   ("Gauri", "Mahajan", "chinchwad","Pune", "Maharastra", "411307", "6825565237", "gauri@gmail.com"),
       ("Saurabh", "Aherwadkar", "Talegaon","Pune", "Maharastra", "410507", "882485432", "saurabh@gmail.com"),
       ("tararani", "Bangar", "Talegaon","Pune", "Maharastra", "410507", "584556589", "tara@gmail.com"),
       ("Anuja", "Shinde", "Karad","Satara", "Maharastra", "415110", "6823549823", "anuja@gmail.com"),
       ("pallavi", "chikhale", "Talegaon","Pune", "Maharastra", "410507", "484533624", "pallavi@gmail.com");

SELECT * FROM AddressBookSystem;

SET SQL_SAFE_UPDATES = 0;
UPDATE AddressBookSystem SET address = "Punavle", city = "Pune", state = "Maharastra", zip = "411342" WHERE firstname = "pallavi" AND lastname = "chikhale";

DELETE FROM AddressBookSystem WHERE firstname = "tararani";
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM AddressBookSystem;

SELECT * FROM AddressBookSystem WHERE address = "chinchwad";

SELECT city, state, COUNT(*) AS count FROM 	AddressBookSystem GROUP BY city, state;