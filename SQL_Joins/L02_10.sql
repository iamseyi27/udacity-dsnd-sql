-- Alias
SELECT 	o.*,
		a.*
FROM orders o
JOIN accounts a
ON o.account_id = a.account_id;