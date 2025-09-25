SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    (
        CITY NOT LIKE 'a%'
        AND CITY NOT LIKE 'e%'
        AND CITY NOT LIKE 'i%'
        AND CITY NOT LIKE 'o%'
        AND CITY NOT LIKE 'u%'
        AND CITY NOT LIKE 'A%'
        AND CITY NOT LIKE 'E%'
        AND CITY NOT LIKE 'I%'
        AND CITY NOT LIKE 'O%'
        AND CITY NOT LIKE 'U%'
    )
    AND (
        CITY NOT LIKE '%a'
        AND CITY NOT LIKE '%e'
        AND CITY NOT LIKE '%i'
        AND CITY NOT LIKE '%o'
        AND CITY NOT LIKE '%u'
        AND CITY NOT LIKE '%A'
        AND CITY NOT LIKE '%E'
        AND CITY NOT LIKE '%I'
        AND CITY NOT LIKE '%O'
        AND CITY NOT LIKE '%U'
    );

/*
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE CITY NOT REGEXP '^[aeiouAEIOU]'
 AND CITY NOT REGEXP '[aeiouAEIOU]$';
 
 → ^ → início da string.
 → $ → fim da string.
 → [aeiouAEIOU] → vogais.
 → NOT REGEXP → garante que não começa nem termina com vogal.
 
 Or
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE LEFT(CITY, 1) NOT IN ('a','e','i','o','u','A','E','I','O','U')
 AND RIGHT(CITY, 1) NOT IN ('a','e','i','o','u','A','E','I','O','U');
 
 
 → LEFT(CITY,1) → primeira letra não é vogal.
 → RIGHT(CITY,1) → última letra não é vogal.
 → AND → ambas as condições devem ser verdadeiras.
 
 */