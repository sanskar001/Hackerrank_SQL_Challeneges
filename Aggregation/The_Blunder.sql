-- SOLUTION:

SELECT CEILING(AVG(SALARY - REPLACE(SALARY, 0, '')))
FROM EMPLOYEES;