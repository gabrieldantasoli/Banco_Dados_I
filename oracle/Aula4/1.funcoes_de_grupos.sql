/*
	FUNÇÕES DE GRUPO:
		+ AVG
        + COUNT
        + MAX
        + MIN
        + SUM
        + STDDEV
        + VARIANCE
*/

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    AVG(c.pontos) as MEDIA_PONTOS,
    SUM(c.pontos) as SOMA_PONTOS
FROM cliente c;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT
	MIN(c.data_nascimento) as MENOR_DATA,
    MAX(c.data_nascimento) as MAIOR_DATA
FROM cliente c;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    SUM(1) AS Quantidade,
    CASE 
		WHEN c.CODCLI % 2 = 0 
			THEN 'Par' 
            ELSE 'Ímpar' 
		END AS Par_ou_Impar
FROM cliente c
GROUP BY Par_ou_Impar;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT
	COUNT(DISTINCT c.SEXO) as QTD_SEXO
FROM cliente c;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	MIN(c.pontos),
    MAX(c.pontos),
    c.sexo as SEXO1
FROM cliente c
GROUP BY SEXO1;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	MIN(c.pontos),
    MAX(c.pontos) as max,
    c.sexo as SEXO1
FROM cliente c
GROUP BY SEXO1
HAVING max > 250;