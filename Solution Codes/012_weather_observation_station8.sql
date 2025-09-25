SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    (
        CITY LIKE 'a%'
        OR CITY LIKE 'e%'
        OR CITY LIKE 'i%'
        OR CITY LIKE 'o%'
        OR CITY LIKE 'u%'
        OR CITY LIKE 'A%'
        OR CITY LIKE 'E%'
        OR CITY LIKE 'I%'
        OR CITY LIKE 'O%'
        OR CITY LIKE 'U%'
    )
    AND (
        CITY LIKE '%a'
        OR CITY LIKE '%e'
        OR CITY LIKE '%i'
        OR CITY LIKE '%o'
        OR CITY LIKE '%u'
        OR CITY LIKE '%A'
        OR CITY LIKE '%E'
        OR CITY LIKE '%I'
        OR CITY LIKE '%O'
        OR CITY LIKE '%U'
    );

/*
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';
 
 → ^ → início da string.
 → [aeiouAEIOU] → primeira letra vogal.
 → .* → qualquer sequência de caracteres no meio.
 → [aeiouAEIOU]$ → última letra vogal.
 
 Or
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE LEFT(CITY, 1) IN ('a','e','i','o','u','A','E','I','O','U')
 AND RIGHT(CITY, 1) IN ('a','e','i','o','u','A','E','I','O','U');
 
 → LEFT(CITY,1) → pega a primeira letra.
 → RIGHT(CITY,1) → pega a última letra.
 → AND → garante que ambas as condições sejam verdadeiras.
 
 */