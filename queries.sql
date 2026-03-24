-- View all customers
SELECT * FROM Customers;

-- View orders with customer names
SELECT 
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- Total spent per customer
SELECT 
    c.first_name,
    c.last_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.first_name, c.last_name;