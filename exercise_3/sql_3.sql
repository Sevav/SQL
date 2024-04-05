WITH CTE AS (
SELECT plane, town_from, town_to,
ROW_NUMBER () OVER (PARTITION BY plane, town_from, town_to) AS ra
from trip
)

SELECT plane, town_from, town_to
FROM CTE
WHERE ra = 1