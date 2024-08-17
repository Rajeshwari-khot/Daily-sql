--product sales analysis 1
--Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

--Return the resulting table in any order.

/* Write your PL/SQL query statement below */
select product_name,year,price
from sales s inner join product p
on s.product_id=p.product_id