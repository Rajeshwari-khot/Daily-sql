WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)
SELECT ROUND(SUM(CASE WHEN event_date = first_login + 1 THEN 1 ELSE 0 END) / COUNT(DISTINCT a.player_id), 2) AS fraction
FROM Activity a
JOIN first_login f
ON a.player_id = f.player_id;
