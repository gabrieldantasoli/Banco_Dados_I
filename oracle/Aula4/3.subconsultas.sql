/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT
	*
FROM cliente c 
WHERE c.codcli > 
	(SELECT AVG(NVL(codcli,0)) FROM cliente);

/* --------OPERADORES DE CONCULTA MULTIPLE-ROW-------------- */
					/* IN, ANY, ALL */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	*
FROM cliente c
WHERE c.codcli /*NOT*/ IN 
	(SELECT 
		CAST(AVG(codcli) AS DECIMAL(10,0))
	 FROM cliente 
     GROUP By sexo);

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	*
FROM cliente c
WHERE c.codcli <= ANY 
	(SELECT 
		CAST(AVG(codcli) AS DECIMAL(10,0))
	 FROM cliente 
     GROUP By sexo)
ORDER BY c.codcli DESC;

/* -------------------------------------------------------- */
 
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	*
FROM cliente c
WHERE c.codcli < ALL 
	(SELECT 
		CAST(AVG(codcli) AS DECIMAL(10,0))
	 FROM cliente 
     GROUP By sexo)
ORDER BY c.codcli DESC;

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	*
FROM cliente c 
WHERE EXISTS
	(SELECT c1.codcli
     FROM cliente c1
     WHERE MOD(c.codcli, 6) = 0); 

/* -------------------------------------------------------- */

/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
	*
FROM cliente c 
WHERE (c.codcli, c.nome) IN 
	(SELECT c1.codcli, c1.nome
     FROM cliente c1
     WHERE MOD(c.codcli, 6) = 0); 