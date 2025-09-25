SELECT
  CASE
    WHEN a + b > c
     AND a + c > b
     AND b + c > a THEN
      CASE
        WHEN a = b AND b = c THEN 'Equilateral'
        WHEN a = b OR b = c OR a = c THEN 'Isosceles'
        ELSE 'Scalene'
      END
    ELSE 'Not A Triangle'
  END AS Triangle
FROM TRIANGLES;