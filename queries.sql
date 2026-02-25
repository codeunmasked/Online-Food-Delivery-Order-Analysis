-- 1. Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 2. Total revenue generated
SELECT SUM(total_amount) AS total_revenue
FROM orders;


-- 3. Average order value
SELECT AVG(total_amount) AS avg_order_value
FROM orders;


-- 4. Total orders by each customer
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;


-- 5. Top 3 restaurants by revenue
SELECT r.restaurant_name,
       SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN restaurants r
ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY total_revenue DESC
LIMIT 3;


-- 6. Most ordered food item
SELECT item_name,
       COUNT(*) AS order_count
FROM order_items
GROUP BY item_name
ORDER BY order_count DESC
LIMIT 1;


-- 7. Orders per day
SELECT order_date,
       COUNT(order_id) AS orders_count
FROM orders
GROUP BY order_date
ORDER BY order_date;


-- 8. Customers who placed more than 1 order (HAVING)
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;


-- 9. Restaurant-wise order count
SELECT r.restaurant_name,
       COUNT(o.order_id) AS total_orders
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_name;


-- 10. Highest value order details
SELECT o.order_id,
       c.customer_name,
       r.restaurant_name,
       o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
ORDER BY o.total_amount DESC
LIMIT 1;
