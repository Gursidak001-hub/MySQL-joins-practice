CREATE DATABASE sql_join_practice;
USE sql_join_practice;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'John Smith', 'New York', 'USA'),
(2, 'Emma Johnson', 'Chicago', 'USA'),
(3, 'Michael Brown', 'Houston', 'USA'),
(4, 'Sophia Davis', 'Los Angeles', 'USA'),
(5, 'Daniel Wilson', 'Seattle', 'USA'),
(6, 'Olivia Taylor', 'Boston', 'USA'),
(7, 'James Anderson', 'Denver', 'USA'),
(8, 'Ava Thomas', 'Miami', 'USA');

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Kitchen');

INSERT INTO products VALUES
(101, 'Laptop', 1, 1200.00),
(102, 'Smartphone', 1, 800.00),
(103, 'Headphones', 1, 150.00),
(104, 'T-Shirt', 2, 25.00),
(105, 'Jeans', 2, 60.00),
(106, 'Jacket', 2, 100.00),
(107, 'SQL Book', 3, 45.00),
(108, 'Python Book', 3, 50.00),
(109, 'Coffee Maker', 4, 80.00),
(110, 'Blender', 4, 70.00),
(111, 'Keyboard', 1, 75.00),
(112, 'Novel', 3, 20.00);

INSERT INTO orders VALUES
(1001, 1, '2025-01-05', 'Completed'),
(1002, 2, '2025-01-08', 'Completed'),
(1003, 1, '2025-01-15', 'Pending'),
(1004, 3, '2025-01-20', 'Completed'),
(1005, 4, '2025-02-01', 'Cancelled'),
(1006, 5, '2025-02-05', 'Completed'),
(1007, 6, '2025-02-10', 'Pending'),
(1008, 2, '2025-02-15', 'Completed'),
(1009, 7, '2025-02-20', 'Completed'),
(1010, 3, '2025-03-01', 'Completed'),
(1011, 1, '2025-03-05', 'Completed');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),

(3, 1002, 102, 1),
(4, 1002, 111, 1),

(5, 1003, 107, 2),

(6, 1004, 104, 3),
(7, 1004, 105, 1),

(8, 1005, 109, 1),

(9, 1006, 106, 1),
(10, 1006, 104, 2),

(11, 1007, 108, 1),

(12, 1008, 109, 1),
(13, 1008, 110, 1),

(14, 1009, 101, 1),
(15, 1009, 111, 2),

(16, 1010, 107, 1),
(17, 1010, 112, 2),

(18, 1011, 102, 1),
(19, 1011, 103, 1),
(20, 1011, 111, 1);