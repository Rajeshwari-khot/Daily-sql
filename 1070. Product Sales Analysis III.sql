/* Write your PL/SQL query statement below */
with cte as(
    select product_id,year,quantity,price,
    rank() over(partition by product_id order by year)as rank
    from sales
)
select product_id,c.year as first_year,quantity,price
from cte c
where c.rank=1
