--Article views
--Write a solution to find all the authors that viewed at least one of their own articles.

--Return the result table sorted by id in ascending order.
/* Write your PL/SQL query statement below */
select distinct author_id as id
from views
where author_id=viewer_id
order by id asc;
