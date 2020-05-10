-- SOLUTION

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '[AEIUO]$';

-- OR

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIUO]$';