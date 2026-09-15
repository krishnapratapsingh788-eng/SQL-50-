WITH CTE AS (
    SELECT
        S.machine_id,
        S.process_id,
        E.timestamp - S.timestamp AS time_taken
    FROM Activity S
    JOIN Activity E
        ON S.machine_id = E.machine_id
        AND S.process_id = E.process_id
    WHERE S.activity_type = 'start'
      AND E.activity_type = 'end'
)

SELECT
    machine_id,
    ROUND(AVG(time_taken), 3) AS processing_time
FROM CTE
GROUP BY machine_id;