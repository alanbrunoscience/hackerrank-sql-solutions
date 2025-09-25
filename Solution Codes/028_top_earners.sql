SELECT
  CONCAT(MAX(months * salary), '  ', COUNT(*))
FROM
  Employee
WHERE
  (months * salary) = (
    SELECT
      MAX(months * salary)
    FROM
      Employee
  );

/* OR
 
 SELECT
  months * salary AS Total,
  COUNT(*) AS NumEmployees
FROM
  Employee
GROUP BY
  months * salary
ORDER BY
  Total DESC
LIMIT
  1;

  → months * salary AS Total → calcula o valor total de cada empregado.
  → COUNT(*) AS NumEmployees → conta quantos funcionários têm esse mesmo total.
  → GROUP BY months * salary → agrupa por cada valor total.
  → ORDER BY Total DESC LIMIT 1 → pega apenas o maior valor total.

 */