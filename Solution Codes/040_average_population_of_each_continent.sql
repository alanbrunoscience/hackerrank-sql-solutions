SELECT
  (COUNTRY.Continent) AS Continent,
  FLOOR(AVG(CITY.Population)) AS Avg_city_pop
FROM
  CITY
  INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
GROUP BY
  COUNTRY.Continent;

/* Explicação:

→ Você está usando uma função de agregação (AVG(CITY.Population)), mas também selecionando uma coluna 
não agregada (COUNTRY.Continent);

→ No MySQL, toda coluna no SELECT que não é agregada precisa estar no GROUP BY.

→ Sem isso, você vai receber o erro:

- Error: 'Continent' is invalid in the select list because it is not contained in either an aggregate 
function or the GROUP BY clause

-----------------------------------------------------------------------------------------------------

Correção:

SELECT
    COUNTRY.Continent AS Continent,
    FLOOR(AVG(CITY.Population)) AS Avg_city_pop
FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;

Explicação:

→ GROUP BY COUNTRY.Continent → agrupa todas as cidades por continente;
→ AVG(CITY.Population) → calcula a média da população das cidades dentro de cada continente;
→ FLOOR(...) → arredonda para baixo conforme o enunciado.


💡 Resumo para leigos:

- 'GROUP BY' = “agrupa as linhas em categorias para fazer cálculos dentro de cada categoria.”
- Sem ele, o SQL só sabe calcular uma média geral e não consegue mostrar a categoria ao lado.

*/