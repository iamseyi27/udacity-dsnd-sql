-- LEFT and RIGHT JOIN
SELECT c.countryid, c.countryname, s.statename
FROM Country c
JOIN State s
ON c.countryid = s.countryid;

SELECT c.countryid, c.countryname, s.statename
FROM Country c
LEFT JOIN State s
ON c.countryid = s.countryid;

SELECT c.countryid, c.countryname, s.statename
FROM State s
LEFT JOIN Country c
ON c.countryid = s.countryid;