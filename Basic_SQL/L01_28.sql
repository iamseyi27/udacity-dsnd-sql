-- QUIZ: WHERE with Non-Numeric

/*
1. Filter the accounts table to include the company name, website, 
and the primary point of contact (primary_poc) for Exxon Mobil in the 
accounts table.
*/

SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';