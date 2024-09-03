/* Write your PL/SQL query statement below */
SELECT a.id
FROM weather a join weather b
on a.recorddate=b.recorddate+1
where a.temperature>b.temperature
