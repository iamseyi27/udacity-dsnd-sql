-- JOINs and Filtering

SELECT	o.*,
		a.*
FROM orders o
LEFT JOIN accounts a
ON o.account_id = a.account_id
WHERE a.sales_rep_id = '321500';


SELECT	o.*,
		a.*
FROM orders o
LEFT JOIN accounts a
ON o.account_id = a.account_id
AND a.sales_rep_id = '321500';

