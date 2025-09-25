SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    CITY LIKE 'a%'
    OR CITY LIKE 'e%'
    OR CITY LIKE 'i%'
    OR CITY LIKE 'o%'
    OR CITY LIKE 'u%';

/*
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE CITY REGEXP '^[aeiouAEIOU]';
 
 → ^ → indica início da string.
 → [aeiouAEIOU] → qualquer vogal (maiúscula ou minúscula).
 → Isso substitui todos os OR CITY LIKE 'x%'.
 
 Or
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE LEFT(CITY, 1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');
 
 → LEFT(CITY, 1) pega apenas a primeira letra da cidade.
 → IN faz a verificação contra a lista de vogais.
 
 */