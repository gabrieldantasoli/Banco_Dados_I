/*
    UNION: Faz a união de duas ou mais tabelas. Devem ter a mesma quantidade de atributos. SEM REPETÇÕES
    UNION ALL: Faz a união de duas ou mais tabelas. Devem ter a mesma quantidade de atributos. COM REPETÇÕES
    INTERSECT: Faz a INTERSEÇÃO de duas ou mais tabelas. Devem ter a mesma quantidade de atributos. 
    MINUS: Faz a subtração de duas ou mais tabelas. Devem ter a mesma quantidade de atributos. 
*/

/* -------------------------UNION------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    c1.codcli,
    c1.nome,
    c1.sobrenome
FROM cliente c1 
WHERE MOD(c1.codcli, 3) = 0
UNION
SELECT 
    c2.codcli,
    c2.nome,
    c2.sobrenome
FROM cliente c2 
WHERE MOD(c2.codcli, 4) = 0;


/* --------------------------UNION ALL------------------------------ */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    c1.codcli,
    c1.nome,
    c1.sobrenome
FROM cliente c1 
WHERE MOD(c1.codcli, 3) = 0
UNION ALL
SELECT 
    c2.codcli,
    c2.nome,
    c2.sobrenome
FROM cliente c2 
WHERE MOD(c2.codcli, 4) = 0;


/* ----------------------------INTERSECT---------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    c1.codcli,
    c1.nome,
    c1.sobrenome
FROM cliente c1 
WHERE MOD(c1.codcli, 3) = 0
INTERSECT
SELECT 
    c2.codcli,
    c2.nome,
    c2.sobrenome
FROM cliente c2 
WHERE MOD(c2.codcli, 4) = 0
ORDER BY codcli


/* --------------------------MINUS------------------------------ */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT 
    c1.codcli,
    c1.nome,
    c1.sobrenome
FROM cliente c1 
WHERE MOD(c1.codcli, 3) = 0
MINUS
SELECT 
    c2.codcli,
    c2.nome,
    c2.sobrenome
FROM cliente c2 
WHERE MOD(c2.codcli, 4) = 0
ORDER BY codcli;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
