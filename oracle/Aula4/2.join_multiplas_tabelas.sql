/* JOIN <-> ON */
SELECT 
    c.*,
    tc.numero
FROM cliente c JOIN telefones_cliente tc
ON c.codcli = tc.cod_cli;


/* NATURAL JOIN */
SELECT 
    *
FROM cliente c
NATURAL JOIN telefones_cliente tc; 


/* JOIN <-> USING */
SELECT 
    * 
FROM cliente c
JOIN telefones_cliente tc USING (codcli);


SELECT 
    *
FROM cliente c 
    JOIN telefones_cliente tc
        ON c.codcli = tc.codcli
WHERE MOD(c.codcli, 2) = 0;


SELECT 
    *
FROM cliente c1 
    JOIN cliente c3
        ON (c1.codcli * 5 = c3.codcli)
ORDER BY c3.codcli DESC;


SELECT 
    *
FROM cliente c
    JOIN job_clientes jc
        ON nvl(c.codcli, 0) BETWEEN jc.lowest_cod and jc.highest_cod
ORDER BY c.codcli; 



SELECT
    *
FROM cliente c
    INNER JOIN telefones_cliente tc ON (c.codcli = tc.codcli)
    INNER JOIN cargo_cliente cg ON (c.codcli = cg.codcli)
ORDER BY tc.numero;


SELECT 
    *
FROM cliente c
    LEFT OUTER JOIN telefones_cliente tc
        ON (c.codcli = tc.codcli)
ORDER BY c.codcli;


SELECT 
    *
FROM cliente c
    RIGHT OUTER JOIN telefones_cliente tc
        ON (c.codcli = tc.codcli)
ORDER BY c.codcli;


SELECT 
    *
FROM cliente c
    FULL OUTER JOIN telefones_cliente tc
        ON (c.codcli = tc.codcli)
ORDER BY c.codcli;


/* PRODUTO CARTESIANO : CROSS JOIN */
SELECT 
    *
FROM cliente c 
    CROSS JOIN telefones_cliente tc;


/* SINTAXE ORACLE 
    EQUIJOIN
    NONEQUIJON
    OUTER JOIN
    SELF-JOIN
*/