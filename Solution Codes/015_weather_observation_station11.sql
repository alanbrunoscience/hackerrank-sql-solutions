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
    OR (
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
 OR CITY NOT REGEXP '[aeiouAEIOU]$';
 
 → ^ → início da string.
 → $ → final da string.
 → NOT REGEXP → garante que não começa ou não termina com vogal
 
 Or
 
 SELECT DISTINCT CITY
 FROM STATION
 WHERE LEFT(CITY, 1) NOT IN ('a','e','i','o','u','A','E','I','O','U')
 OR RIGHT(CITY, 1) NOT IN ('a','e','i','o','u','A','E','I','O','U');
 
 
 → LEFT(CITY,1) → primeira letra.
 → RIGHT(CITY,1) → última letra.
 → OR → basta que uma das duas condições seja verdadeira.
 
 */