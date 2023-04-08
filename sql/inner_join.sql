
select 
    v.i_venda_venda,
    c.s_nome_cliente,
    tc.s_dsctipocliente_tipocliente,
    v.d_data_venda,
    v.f_valor_venda
from vendas v
inner join cliente c on v.i_cliente_cliente = c.i_cliente_cliente
inner join tipocliente tc on v.i_cliente_cliente = tc.i_tipocliente_tipocliente
group by v.i_venda_venda, tc.s_dsctipocliente_tipocliente;