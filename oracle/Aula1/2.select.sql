/* SELECT : seleciona um subgrupo de dados*/
/* 
	CONCAT : operador de CONCATENAÇÃO .
	|| no oracle
*/
/* BETWEEN : Faixa de valores 10 < between < 20 */
/* IN : operador em um conjunto de valores*/
/* LIKE : Pesquisa de valores que coinscidem com padrões utilizando caracteres coringas.
	% => combina com zero ou mais caracters
    _ => combina com um e somente um caractere
*/

SELECT 
	* 
FROM cliente;


SELECT 
	CODCLI as cod_cli,
    cpf as cpf_cli,
    email as email_cli
FROM cliente;


SELECT 
	codcli as COD_CLI,
	cpf as CPF_CLI
FROM cliente
WHERE codCli > 5;


SELECT 
	CODCLI * 1.5 as cod_cli,
    cpf as cpf_cli
FROM cliente;


SELECT 
	*
FROM cliente c
WHERE c.codcli % 2 = 0;


SELECT 
	codcli as COD_CLI,
    CONCAT(nome, " ", sobrenome) as NOME_CLI,
    CONCAT(end_rua, ", ", end_num, ", ", END_BAIRRO, ", ", END_CIDADE) as EDND_CLI
FROM cliente c;


SELECT
	c.codcli as COD_CLI,
    c.cpf as CPF_CLI,
    c.nome as NOME_CLI,
    c.sobrenome as SOBRE_CLI
FROM cliente c
WHERE length(c.SOBRENOME) <> 6;


SELECT 
	*
FROM cliente c
where c.pontos BETWEEN 100 and 1000;


SELECT 
	*
FROM cliente c
WHERE c.end_rua in ("street 31", "street 32", "street 33");



SELECT 
	*
FROM cliente c
WHERE c.nome LIKE "%O%v%";


SELECT 
	*
FROM cliente c
WHERE c.nome LIKE "_v%";


SELECT 
	*
FROM cliente c
WHERE 
	(not c.sobrenome = "Morgan") and
    c.nome LIKE "%v%";


/*
TABLE CLIENTE {
	CODCLI
	CPF
	NOME
	SOBRENOME
	EMAIL
	DATA_NASCIMENTO
	PONTOS
	SEXO
	END_RUA
	END_NUM
	END_BAIRRO
	END_CIDADE
	END_CEP
	DATA_INDICACAO
	CLIENTE_INDICA
}
*/