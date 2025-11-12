-- 1. View all orders with customer names and total amount
SELECT o.order_id, c.customer_name, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date;

-- 2. Get top 3 products by total sales value
SELECT p.product_name, SUM(od.subtotal) AS total_sales
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 3;

-- 3. Find total number of orders placed by each customer
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- 4. Products with low stock (< 10 units)
SELECT product_name, stock
FROM Products
WHERE stock < 10;

-- 5. Total revenue generated per month
SELECT MONTH(order_date) AS month, SUM(total_amount) AS revenue
FROM Orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- 6. Customers who spent more than ₹50,000 in total
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.total_amount) > 50000;

-- 7. Products never ordered
SELECT product_name
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM OrderDetails);
