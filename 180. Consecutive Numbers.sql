
SELECT DISTINCT num as ConsecutiveNums
FROM (
     SELECT id, num, 
    LAG(num) OVER(ORDER BY id) as prev_num,
    LEAD(num) OVER(ORDER BY id) as next_num
    FROM Logs
 ) l
 WHERE l.num = l.prev_num
 AND l.prev_num = l.next_num
 AND l.num = l.next_num;
