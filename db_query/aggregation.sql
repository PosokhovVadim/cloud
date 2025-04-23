SELECT currency, SUM(amount) as total_amount
FROM transactions_v2
WHERE currency IN ('USD', 'EUR', 'RUB')
GROUP BY currency;

SELECT is_fraud, COUNT(*) as count, SUM(amount) as total, AVG(amount) as avg_amount
FROM transactions_v2
GROUP BY is_fraud;

SELECT TO_DATE(transaction_date) as day, COUNT(*) as cnt, SUM(amount) as sum_amount, AVG(amount) as avg
FROM transactions_v2
GROUP BY day;

SELECT t.transaction_id, COUNT(l.log_id) as logs_count
FROM transactions_v2 t
JOIN logs_v2 l ON t.transaction_id = l.transaction_id
GROUP BY t.transaction_id;
