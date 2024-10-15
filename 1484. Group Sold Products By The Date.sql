/* Write your PL/SQL query statement below */

SELECT TO_CHAR(sell_date, 'YYYY-MM-DD') AS "sell_date", 
COUNT(DISTINCT(product)) AS "num_sold",
LISTAGG(product, ',') WITHIN GROUP (ORDER BY product) AS "products"
FROM (
    SELECT DISTINCT product, sell_date 
    FROM activities
) 
GROUP BY sell_date 
ORDER BY sell_date;
