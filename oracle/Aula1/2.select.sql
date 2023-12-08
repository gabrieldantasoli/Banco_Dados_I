/* SELECT : seleciona um subgrupo de dados*/
/* 
	CONCAT : operador de CONCATENAÇÃO .
	|| no oracle
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

