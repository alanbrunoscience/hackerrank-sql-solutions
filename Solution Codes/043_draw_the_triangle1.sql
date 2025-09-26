SELECT
  REPEAT('* ', @row := @row - 1)
FROM
  information_schema.tables,
  (
    SELECT
      @row := 21
  ) init
LIMIT
  20;

/* 

Explicação:

1. 'SELECT @row := 21' → cria uma variável @row que começa em 21, porque vamos ir decrementando até chegar em 1
(total de 20 linhas).
2. 'REPEAT('* ', @row := @row - 1)' → a cada linha, decrementa '@row' e repete '*' esse número de vezes.
  - 1ª linha: '@row = 20 → "* * * ... *"' (20 vezes);
  - 2ª linha: '@row = 19 → "* * * ... *"' (19 vezes);
  - ...;
  - última linha: '@row = 1 → "*"'.
3. 'information_schema.tables' é usado só como uma tabela grande para gerar várias linhas;
4. 'LIMIT 20' garante que só imprimimos 20 linhas.

*/
