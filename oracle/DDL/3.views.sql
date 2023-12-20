/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE OR REPLACE VIEW viewCliente1
AS 
SELECT 
    *
FROM cliente c
WHERE c.codcli = 1;

SELECT * FROM ViewCliente1;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE OR REPLACE VIEW CLIENTE_VIEW
AS 
SELECT 
    c.nome as NOME,
    c.sobrenome as SOBRENOME,
    c.end_rua as RUA,
    c.end_num as NUM,
    c.end_cidade as CIDADE
FROM cliente c;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE OR REPLACE VIEW CLIENTES_MALE
AS
SELECT 
    *
FROM CLIENTE c
WHERE c.sexo = 'Male';


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE OR REPLACE VIEW CLIENTES_POINTS (sexo, max_points, min_points)
AS
SELECT 
    c.sexo,
    MIN(c.pontos),
    MAX(c.pontos)
FROM cliente c
GROUP BY c.sexo;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE OR REPLACE VIEW CLIENTE_VIEW AS 
SELECT 
    c.nome AS NOME,
    c.sobrenome AS SOBRENOME,
    c.end_rua AS RUA,
    c.end_num AS NUM,
    c.end_cidade AS CIDADE,
    tc.numero AS NUMERO
FROM cliente c
INNER JOIN telefones_cliente tc ON c.codcli = tc.codcli
WITH READ ONLY;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
DROP VIEW CLIENTE_VIEW;