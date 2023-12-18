-- Arithmetic Operations

SELECT  account_id, 
		occurred_at, 
		standard_qty, 
		gloss_qty, 
		poster_qty,
		gloss_qty + poster_qty AS nonstandard_qty
FROM orders;