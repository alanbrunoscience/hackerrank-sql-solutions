DELIMITER $$

CREATE PROCEDURE print_pattern()
BEGIN
    DECLARE counter INT DEFAULT 20;

    WHILE counter > 0 DO
        SELECT REPEAT('* ', counter);
        SET counter = counter - 1;
    END WHILE;
END $$

DELIMITER ;

CALL print_pattern();

/* 
 
 Explicação:
 
 ----
 
 📌 O que são Procedures no MySQL?
 
 Procedures (ou Stored Procedures) são como funções armazenadas no banco de dados.
 Ou seja, em vez de escrever um SQL manualmente toda vez, você cria um bloco de código SQL com lógica (loops, condições, variáveis etc.) e o guarda dentro do banco. Depois pode chamar esse código sempre que quiser.
 
 ----
 
 1. 'DELIMITER $$': 
 
 → Por padrão o MySQL usa ';' como terminador de instrução. Ao criar procedures você precisa usar ';' dentro do corpo da procedure;
 → Mudamos o delimitador para '$$' para que o MySQL não trate os ';' internos como fim do 'CREATE PROCEDURE'. Assim o 'CREATE PROCEDURE ... END $$' só termina quando encontra '$$'.
 
 2. 'CREATE PROCEDURE print_pattern()': 
 
 → Cria uma procedure chamada 'print_pattern'. Os parênteses '()' indicam que não há parâmetros de entrada.
 
 3. 'BEGIN ... END': 
 
 → Delimitam o corpo da procedure — onde vão as declarações e lógica.
 
 4. 'DECLARE counter INT DEFAULT 20;': 
 
 → Declara uma variável local chamada 'counter' do tipo inteiro e já define o valor inicial '20'. 
 → Essa variável será usada como contador/linha: começaremos em 20 e vamos diminuindo até 1.
 
 5. 'WHILE counter > 0 DO': 
 
 → Inicia um laço (loop) que se repete enquanto counter for maior que 0.
 
 6. 'SELECT REPEAT('* ', counter);': 
 
 → A cada iteração executa um 'SELECT' que gera uma linha com '* ' repetido counter vezes.
 → 'REPEAT(str, n)' devolve a string 'str' repetida 'n' vezes. Ex.: quando 'counter = 3' => '* * * '.
 
 7. 'SET counter = counter - 1;':
 
 → Decrementa counter. Sem isso o loop seria infinito.
 
 8. 'END WHILE;':
 
 → Fecha o laço WHILE.
 
 9. 'END $$':
 
 → Fecha o corpo da procedure. Repare que usamos '$$' porque mudamos o delimitador antes.
 
 10. 'DELIMITER ;':
 
 → Restaura o delimitador padrão ; para o cliente MySQL.
 
 11. 'CALL print_pattern();':
 
 → Executa (invoca) a procedure criada, fazendo com que o loop rode e os SELECT REPEAT(...) sejam executados.
 
 */