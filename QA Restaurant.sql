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

