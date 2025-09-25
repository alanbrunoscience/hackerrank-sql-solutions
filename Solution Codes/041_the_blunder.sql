SELECT
  CEIL(
    AVG(Salary) - AVG(REPLACE(CAST(Salary AS CHAR), '0', ''))
  )
FROM
  EMPLOYEES;

/* CEIL

- Return the smallest integer value that is greater than or equal to 25.75:

SELECT CEIL(25.75);

- Output: 26

*/
