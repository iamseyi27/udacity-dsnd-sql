-- ORDER BY Part II

SELECT account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;

SELECT account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id;