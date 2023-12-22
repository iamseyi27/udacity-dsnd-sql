-- QUIZ: AND and BETWEEN Operators

/*
1. Write a query that returns all the `orders` where the standard_qty is 
over 1000, the poster_qty is 0, and the gloss_qty is 0.
*/

SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

/*
2. Using the accounts table find all the companies whose names do not 
start with 'C' and end with 's'.
*/

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' and name NOT LIKE '%s';

/*
3. Use the web_events table to find all information regarding 
individuals who were contacted via organic or adwords and started
their account at any point in 2016 sorted from newest to oldest.
*/

SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at >= '2016-01-01'
ORDER BY occurred_at DESC