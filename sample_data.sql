INSERT INTO Customers (first_name, last_name, email, phone)
VALUES 
('John', 'Doe', 'john@example.com', '1234567890'),
('Jane', 'Smith', 'jane@example.com', '0987654321');

INSERT INTO Products (product_name, price)
VALUES
('Laptop', 15000.00),
('Mouse', 250.00),
('Keyboard', 500.00);

INSERT INTO Orders (customer_id)
VALUES (1), (2);

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);