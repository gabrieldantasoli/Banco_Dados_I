select 'Cliente' as Tabela, i_cliente_cliente, s_nome_cliente from cliente
union
select 'Cliente_Aux' as Tabela_aux, i_cliente_cliente, s_nome_cliente from cliente_aux
union 
select 'Venda' as Venda, v.i_cliente_cliente, c.s_nome_cliente from vendas v
inner join cliente c on c.i_cliente_cliente = v.i_cliente_cliente
order by s_nome_cliente;