/* IN ORACLE 1 */
SELECT
	nome,
    TO_CHAR(data_nascimento, 'DD/MM/YYY HH24:MI:SS')
from cliente;

/* IN MYSQL 1 */
SELECT
    nome,
    DATE_FORMAT(data_nascimento, '%d/%m/%Y %H:%i:%s') AS data_formatada
FROM cliente;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
SELECT 
	DATE_FORMAT(NOW(), '%d/%m/%Y %H:%i:%s');

/* IN ORACLE 1 */
SELECT 
	sysdate,
    TO_CHAR(sysdate, 'DD/MM/YYYY HH24:MI:SS')
FROM dual;


/* -------------------------------------------------------- */

/* IN MYSQL 1 */
SELECT 
	date_format(NOW(), '%d, de %M de %Y') as now,
    nome
FROM cliente;

/* IN ORACLE 1 */
SELECT 
	c.nome as NOME_CLI,
    TO_CHAR(c.data_nascimento, 'DD, "de" Month "de" YYYY')
FROM cliente c;


/* -------------------------------------------------------- */

/* IN MYSQL 1 */

/* IN ORACLE 1 */
SELECT TO_CHAR(31331212.22, 'L99G999G999D99') FROM DUAL;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
SELECT CAST('12000.50' AS DECIMAL(10,2));
SELECT CONVERT('12000.50', DECIMAL(10,2));

/* IN ORACLE 1 */
SELECT 
	TO_NUMBER('12000.50')
FROM DUAL;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
SELECT STR_TO_DATE('06/11/2003', '%d/%m/%Y') AS DATA;

/* IN ORACLE 1 */
SELECT 
	TO_DATE('06/11/2003', 'DD/MM/YYYY') AS DATA
FROM DUAL;