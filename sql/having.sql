SELECT i_tipo_cliente, i_cliente_cliente ,s_nome_cliente
FROM cliente 
GROUP BY i_tipo_cliente, i_cliente_cliente
having i_cliente_cliente > 15;

SELECT
	i_tipo_cliente as tipo,
	count(i_cliente_cliente) as qtde
FROM cliente 
GROUP BY i_tipo_cliente
having i_tipo_cliente > 1
order by i_tipo_cliente;


select 
	i_venda_venda,i_cliente_cliente,d_data_venda
from vendas
group by i_cliente_cliente;

