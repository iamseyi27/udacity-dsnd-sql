-- NOT Operator

SELECT 	sales_rep_id,
		name
FROM accounts
WHERE sales_rep_id IN (321500, 321570)
ORDER BY sales_rep_id;

SELECT sales_rep_id, name
FROM accounts
WHERE sales_rep_id NOT IN (321500, 321570)
ORDER BY sales_rep_id;

SELECT * 
FROM web_events
WHERE channel NOT LIKE '%ace%';