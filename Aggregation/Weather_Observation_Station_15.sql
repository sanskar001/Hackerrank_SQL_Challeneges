-- SOLUTION:

-- method 1:

-- SELECT ROUND(LONG_W, 4)
-- FROM STATION
-- WHERE LAT_N < 137.2345
-- ORDER BY LAT_N DESC
-- LIMIT 1;

-- --------------------------------
-- method 2:
-- using sub-query.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) 
               FROM STATION 
               WHERE LAT_N < 137.2345);