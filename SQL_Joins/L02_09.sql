-- JOIN More than Two Tables
SELECT *
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.account_id
JOIN orders
ON accounts.account_id = orders.account_id;

SELECT web_events.channel, accounts."name", orders.total
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.account_id
JOIN orders
ON accounts.account_id = orders.account_id;