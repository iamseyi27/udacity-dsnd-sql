-- Introduction to JOINs
SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.account_id;

SELECT 	orders.*,
		accounts.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.account_id;