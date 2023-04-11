select * from vendas;

select max(f_valor_venda) from vendas;
select min(f_valor_venda) from vendas;

select * from vendas
where f_valor_venda = (select max(f_valor_venda) from vendas);

select * from vendas
where f_valor_venda = (select min(f_valor_venda) from vendas);

SELECT i_cliente_cliente, d_data_venda, MAX(f_valor_venda)
FROM vendas
GROUP BY i_cliente_cliente, d_data_venda;

select * from vendas v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
where f_valor_venda = (select min(f_valor_venda) from vendas);

select c.i_cliente_cliente, c.s_nome_cliente, c.s_cpf_cliente, c.i_tipo_cliente, v.i_venda_venda from vendas v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
where f_valor_venda = (select min(f_valor_venda) from vendas);

