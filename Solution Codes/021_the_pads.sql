-- Part 1: Formatted names
SELECT
  CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS Result
FROM
  OCCUPATIONS
UNION
ALL -- Joins the two blocks into the same result.
-- Part 2: Summary
SELECT
  CONCAT(
    'There are a total of ',
    COUNT(*),
    ' ',
    LOWER(Occupation),
    's.'
  ) AS Result
FROM
  OCCUPATIONS
GROUP BY
  Occupation
ORDER BY
  Result;

/* MySQL Server
 
 SET NOCOUNT ON;
 
 SELECT
 Name + '(' + LEFT(Occupation, 1) + ')' AS Name_Profession
 FROM OCCUPATIONS
 ORDER BY Name;
 
 SELECT
 'There are a total of ' + CAST(COUNT(Occupation) AS VARCHAR(4)) + ' ' 
 + LOWER(Occupation) + 's.' AS Count
 FROM OCCUPATIONS
 GROUP BY Occupation
 ORDER BY COUNT(Occupation);
 
 go
 
 */