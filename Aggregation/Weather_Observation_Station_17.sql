-- SOLUTION:

-- method 1:

-- SELECT ROUND(LONG_W, 4)
-- FROM STATION
-- WHERE LAT_N > 38.7780
-- ORDER BY LAT_N ASC
-- LIMIT 1;

-- --------------------------------
-- method 2:
-- using sub-query.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) 
               FROM STATION 
               WHERE LAT_N > 38.7780);