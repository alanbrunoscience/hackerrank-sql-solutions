SELECT
  CAST(
    SQRT(
      POW((MIN(LAT_N) - MAX(LAT_N)), 2) + POW((MIN(LONG_W) - MAX(LONG_W)), 2)
    ) AS DECIMAL(10, 4)
  ) AS Euclidean_Dist_p1_p2
FROM
  STATION;