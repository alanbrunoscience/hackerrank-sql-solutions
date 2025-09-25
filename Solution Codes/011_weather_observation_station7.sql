SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    CITY LIKE '%a'
    OR CITY LIKE '%e'
    OR CITY LIKE '%i'
    OR CITY LIKE '%o'
    OR CITY LIKE '%u';

/*
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE CITY REGEXP '[aeiouAEIOU]$';
 
 → $ → indica o final da string.
 → [aeiouAEIOU] → qualquer vogal (maiúscula ou minúscula).
 
 Or
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE RIGHT(CITY, 1) IN ('a','e','i','o','u','A','E','I','O','U');
 
 → RIGHT(CITY, 1) → pega o último caractere da string.
 → IN faz a verificação contra a lista de vogais.
 
 */