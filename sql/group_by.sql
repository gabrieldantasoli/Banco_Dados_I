SELECT i_tipo_cliente, i_cliente_cliente ,s_nome_cliente
FROM cliente 
GROUP BY i_tipo_cliente, i_cliente_cliente;

SELECT
	i_tipo_cliente as tipo,
	count(i_cliente_cliente) as qtde
FROM cliente 
GROUP BY i_tipo_cliente;