CREATE DATABASE demo_sales;
USE demo_sales;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS inventory;
CREATE TABLE sales (
market_segment CHAR(1),
profit DOUBLE,
PRIMARY KEY (market_segment)
);

CREATE TABLE inventory (
order_id INTEGER,
market_segment CHAR(1),
dates DATE,
PRIMARY KEY (order_id)
);
ALTER TABLE inventory ADD CONSTRAINT constFKPF FOREIGN KEY (market_segment) REFERENCES sales (market_segment); 
INSERT INTO sales VALUES ('A', 550);
INSERT INTO sales VALUES ('B', 500);
INSERT INTO sales VALUES ('C', 670);
INSERT INTO sales VALUES ('D', 730);
INSERT INTO sales VALUES ('E', 982);

INSERT INTO inventory VALUES (001, 'A', '2017-11-02');
INSERT INTO inventory VALUES (002, 'A', '2017-11-05');
INSERT INTO inventory VALUES (003, 'A', '2017-11-08');
INSERT INTO inventory VALUES (004, 'A', '2017-11-15');
INSERT INTO inventory VALUES (005, 'A', '2017-11-28');

SELECT *,
       -- LAG(DAY(dates)) OVER days_elapsed_window AS lag_,
       -- LEAD(DAY(dates)) OVER days_elapsed_window AS lead_,
       DAY(dates) - (LAG(DAY(dates)) OVER days_elapsed_window) AS days_elapsed
       -- (LEAD(DAY(dates)) OVER  days_elapsed_window) - DAY(dates) AS lead_diffence
FROM inventory
WINDOW days_elapsed_window AS (ORDER BY dates);
