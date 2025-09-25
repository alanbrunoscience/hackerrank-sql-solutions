SELECT
  REPEAT('* ', @row := @row + 1)
FROM
  information_schema.tables,
  (
    SELECT
      @row := 0
  ) init
LIMIT
  20;