/*
    CASE-CONVERSION:
        + LOWER
        + UPPER
        + INITCAP
    
    CHARACTER-MANIPULATION:
        + CONCAT
        + SUBSTR
        + LENGTH
        + INSTR
        + LPAD | RPAD
        + TRIM
        + REPLACE

    NUMBER-MANIPULATION:
        + ROUND
        + TRUNC -> TRUNCATE in mySQL
        + MOD
        + ABS
        + SQLT
*/

SELECT 
	c.codcli as COD_CLI,
    LOWER(c.nome) as NOME_CLI,
    UPPER(c.sobrenome) as SOBRE_CLI,
    INITCAP(c.email) as EMAIL_CLI
FROM cliente c;


SELECT 
	* 
FROM cliente c
WHERE LOWER(c.SOBRENOME) = "carter";


SELECT
	c.codcli as COD,
    concat(c.nome, " ", c.sobrenome)
FROM cliente c;


SELECT 
	c.codcli as COD,
    c.nome as NOME,
    substr(c.sobrenome, 1, 3)
FROM cliente c;


SELECT	
	*
FROM cliente c
WHERE NOT LENGTH(c.nome) >= 5;


SELECT
	c.codcli as COD,
    concat(c.nome, " ", c.sobrenome) as NOME
FROM cliente c
WHERE INSTR(c.sobrenome, "dan") > 0;


SELECT
	c.codcli as COD,
    LPAD(concat(c.nome, " ", c.sobrenome), 30, "-") as NOME
FROM cliente c;


SELECT
	c.codcli as COD,
    RPAD(concat(c.nome, " ", c.sobrenome), 30, "-") as NOME
FROM cliente c;


SELECT
	c.codcli as COD,
    REPLACE(concat(c.nome, " ", c.sobrenome), c.sobrenome, "Dantas de Oliveria") as NOME
FROM cliente c;


SELECT
	ROUND(c.codcli * 3.523232552, 0) as COD_CLI1,
    ROUND(c.codcli * 3.523232552, 1) as COD_CLI2,
    ROUND(c.codcli * 3.523232552, 2) as COD_CLI3,
    ROUND(c.codcli * 3.523232552, 5) as COD_CLI1,
    c.nome as NOME
FROM cliente c;


SELECT
	c.codcli as COD_CLI,
    c.nome as NOME
FROM cliente c
WHERE c.codcli MOD 2 = 0;


SELECT
	c.codcli as COD_CLI,
    c.nome as NOME
FROM cliente c
WHERE ABS(c.codcli) > 0;


SELECT
	c.codcli as COD_CLI,
    c.nome as NOME
FROM cliente c
WHERE SQRT(c.codcli) IN (1,2,3);



/* DATE */

/* IN ORACLE */
SELECT sysdate
FROM dual;
/* IN MYSQL */
SELECT NOW();


/* USE A TABELA DUAL PARA FAZER CALCULOS */
SELECT 300 * 10 FROM DUAL;