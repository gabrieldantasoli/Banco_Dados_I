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