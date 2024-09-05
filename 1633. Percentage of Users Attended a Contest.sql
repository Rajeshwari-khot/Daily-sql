/* Write your PL/SQL query statement below */
select r.contest_id,
round((count(r.contest_id)/(select count(user_id) from users))*100.00,2)as percentage
from  register r
group by r.contest_id
order by percentage desc,r.contest_id
