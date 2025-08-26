-- Question 2: Product Filter Write an SQL query to list products that satisfy these conditions: Price is less than 100 or stock is 0. The product must not belong to the Furniture category. Include only products whose name contains the letter 'e'.
show databases;
CREATE DATABASE IF NOT EXISTS store;
USE store;
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock INT
);
INSERT INTO products VALUES
(1, 'Laptop',    'Electronics', 950.00, 10),
(2, 'Chair',     'Furniture', 80.00, 0),
(3, 'Table',     'Furniture', 120.00, 5),
(4, 'Pen',       'Stationery', 5.00, 0),
(5, 'HexBox',    'Toys', 150.00, 20),
(6, 'Notebook',  'Stationery', 50.00, 30),
(7, 'Sofa',      'Furniture', 500.00, 0),
(8, 'AppleBox',  'Toys', 90.00, 0);


SELECT * FROM products
WHERE (price < 100 OR stock = 0)
  AND category != 'Furniture'
  AND product_name LIKE '%e%';
