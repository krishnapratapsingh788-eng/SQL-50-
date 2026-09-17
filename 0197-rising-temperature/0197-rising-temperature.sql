WITH CTE AS (
SELECT W.ID, W.temperature, W1.temperature AS previous_temperature
FROM Weather W
JOIN Weather W1
ON DATEDIFF(W.recordDate, W1.recordDate) = 1
)

SELECT ID
FROM CTE
WHERE temperature > previous_temperature;













