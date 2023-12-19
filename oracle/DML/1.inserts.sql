/* ------------------------INSERTS------------------------ */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
INSERT INTO CLIENTE (CODCLI, CPF, NOME, SOBRENOME, EMAIL, DATA_NASCIMENTO, PONTOS, SEXO, END_RUA, END_NUM, END_BAIRRO, END_CIDADE, END_CEP, DATA_INDICACAO, CLIENTE_INDICA)
VALUES (CLIENTE_SEQ.NEXTVAL, '12773139461', 'Gabriel', 'Dantas', 'gabriel@gmail.com', DATE '2003-11-06', 100, 'Male', 'Pereira', '44', 'Nova vida', 'Ingá', '58380000', NULL, NULL);

/* IN MYSQL 1 */
/* IN ORACLE 1 */
DESC CLIENTE;

/* IN MYSQL 1 */
/* IN ORACLE 1 */
INSERT INTO TELEFONES_CLIENTE (CODCLI, NUMERO)
VALUES (41, 083991925263);

/* IN MYSQL 1 */
/* IN ORACLE 1 */
INSERT INTO TELEFONES_CLIENTE (CODCLI, NUMERO)
SELECT 
    c.codcli,
    9291921212
FROM cliente c
WHERE c.nome = 'Gabriel';


/* ----------------------UPDATE------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
UPDATE cliente c
SET c.PONTOS = c.PONTOS * 20
WHERE c.pontos >= 10000;

/* IN MYSQL 1 */
/* IN ORACLE 1 */
UPDATE cliente c
set pontos = (SELECT MAX(pontos) FROM cliente),
    nome = 'Leirbag'
WHERE c.nome = 'Gabriel';


/* -------------------CUIDADO : DELETE------------------------ */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
DELETE FROM telefones_cliente tc
WHERE tc.codcli > 30;

DELETE FROM cliente;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
COMMIT;
ROLLBACK;
SAVEPOINT X;
ROLLBACK TO SAVEPOINT X;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */