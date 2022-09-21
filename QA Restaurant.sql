CREATE DATABASE qa_restaurant;
USE qa_restaurant;
CREATE TABLE customers(
customer_id INT UNIQUE NOT NULL AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
phone_number VARCHAR(11) NOT NULL,
address VARCHAR(500) DEFAULT "collection",
post_code VARCHAR(10) DEFAULT "collection",
email VARCHAR(50) DEFAULT "unknown",
PRIMARY KEY(customer_id));
SHOW TABLES;
DESCRIBE customers;

CREATE TABLE menu(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item VARCHAR(100) NOT NULL,
price DECIMAL(5,2) NOT NULL,
in_stock BOOLEAN,
image VARCHAR(500) DEFAULT "no_image_available",
calories INT NOT NULL,
allergens VARCHAR(500) NOT NULL,
ingredients VARCHAR(500) NOT NULL,
PRIMARY KEY(item_id));
DESCRIBE menu;

INSERT INTO customers(first_name, last_name, phone_number, address, post_code) VALUES("Patrick", "Star", "07653124851", "38 Bikini Bottom", "BK154LU");
DESCRIBE customers;
READ customers;
SELECT customers;
SELECT * FROM customers;
UPDATE customers SET first_name="Bob" WHERE customer_id=1;
SELECT * FROM customers;
DELETE FROM customers WHERE customer_id=1;
SELECT * FROM customers;
INSERT INTO customers(first_name, last_name) VALUES("Brian", "Cat");
SELECT * FROM customers;
INSERT INTO customers(first_name, last_name, phone_number, address, post_code) VALUES("Brian", "Cat", "09876582919", "34 Cat Street", "GHUJAK");
SELECT * FROM customers;

CREATE TABLE orders(
id INT NOT NULL AUTO_INCREMENT,
order_date TIMESTAMP,
customer_id INT NOT NULL,
price DECIMAL(5,2) NOT NULL,
complete BOOLEAN,
discount DECIMAL(5,2) DEFAULT "0",
PRIMARY KEY (id),
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));
DROP TABLE orders;


DESCRIBE orders;

CREATE TABLE order_items(
order_items_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_id INT NOT NULL,
order_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_items_id),
FOREIGN KEY (item_id) REFERENCES menu (item_id),
FOREIGN KEY (order_id) REFERENCES orders (id));
DROP TABLE order_items;


DESCRIBE order_items;

SELECT * FROM orders;

SELECT * FROM order_items;




