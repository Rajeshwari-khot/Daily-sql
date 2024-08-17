--Replace employeeid with unique identifiers
--Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

--Return the result table in any order.
/* Write your PL/SQL query statement below */
select u.unique_id,e.name
from Employees e left join EmployeeUNI u
on e.id=u.id
