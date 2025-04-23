SELECT payment_status, COUNT(*) as orders, SUM(total_amount), AVG(total_amount)
FROM orders
GROUP BY payment_status;

SELECT o.order_id, COUNT(oi.item_id) as items, SUM(oi.price), AVG(oi.price)
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

SELECT order_date, COUNT(*) as order_count, SUM(total_amount)
FROM orders
GROUP BY order_date;

SELECT user_id, COUNT(*) as orders, SUM(total_amount) as total
FROM orders
GROUP BY user_id
ORDER BY total DESC
LIMIT 10;
