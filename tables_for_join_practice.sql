CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name, city) VALUES
(1, 'Anil', 'Mumbai'),
(2, 'Priya', 'Delhi'),
(3, 'Rahul', 'Bangalore'),
(4, 'Meera', 'Chennai'),
(5, 'Raj', 'Kolkata'),
(6, 'Sneha', 'Pune');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2023-08-01', 1000.50),
(102, 2, '2023-08-03', 2000.75),
(103, 4, '2023-08-05', 1500.00),
(104, 5, '2023-08-07', 3000.25),
(105, 7, '2023-08-09', 750.00);  -- customer_id 7 does not exist in the Customers table to demonstrate RIGHT JOIN.

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Products (product_id, order_id, product_name, quantity) VALUES
(1, 101, 'Laptop', 1),
(2, 102, 'Smartphone', 2),
(3, 103, 'Headphones', 3),
(4, 104, 'Tablet', 1),
(5, 105, 'Keyboard', 2);


CREATE TABLE Discounts (
    amount_range VARCHAR(20),
    discount_percentage DECIMAL(5, 2)
);

INSERT INTO Discounts (amount_range, discount_percentage) VALUES
('0-1000', 5.00),
('1001-2000', 7.50),
('2001-3000', 10.00),
('3001-5000', 12.50);
