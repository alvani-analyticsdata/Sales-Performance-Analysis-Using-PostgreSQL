CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO customers VALUES
(1, 'United Kingdom'),
(2, 'Germany'),
(3, 'France');

INSERT INTO products VALUES
(101, 'White Mug', 5.00),
(102, 'Red Notebook', 7.50),
(103, 'Blue T-Shirt', 12.00);

INSERT INTO orders VALUES
(1001, '2025-01-10', 1),
(1002, '2025-01-12', 2),
(1003, '2025-01-15', 1);

INSERT INTO order_items VALUES
(1, 1001, 101, 10),
(2, 1001, 102, 5),
(3, 1002, 103, 3),
(4, 1003, 101, 8);
