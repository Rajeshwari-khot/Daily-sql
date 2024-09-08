/* Write your PL/SQL query statement below */
select round(count(case when a.order_date=a.customer_pref_delivery_date then 1 else NULL end)*100/count(*),2)as immediate_percentage
from delivery a 
where a.order_date=
(select min(order_date) from delivery b
where b.customer_id=a.customer_id)
