-- IN Operator

SELECT *
FROM accounts
WHERE name IN ('Walmart', 'Apple');

SELECT *
FROM orders
WHERE account_id IN (1001, 1021);