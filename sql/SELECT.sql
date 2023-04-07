/*
	SELECT
    FROM 
    WHERE
    GROUP BY
    HAVING
    ORDER BY
*/


select * from produtos;

SELECT 
	i_id_produtos * 2,
	upper(v_descricao_produtos)
FROM produtos
ORDER BY i_id_produtos;
