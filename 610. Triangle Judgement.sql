/* Write your PL/SQL query statement below */
/* Write your PL/SQL query statement below */
select x, y , z, case when( x + y > z and y + z > x and z + x > y) then 'Yes' else 'No' end  as triangle
from triangle;
