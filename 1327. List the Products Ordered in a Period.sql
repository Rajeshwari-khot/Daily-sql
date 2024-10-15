/* Write your PL/SQL query statement below */
select product_name,sum(unit)as unit
from products p
join orders o on p.product_id=o.product_id
where to_char(order_date,'MON-YYYY')='FEB-2020'
group by product_name
having sum(unit)>=100
