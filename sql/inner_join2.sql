select * from cliente;
select * from tipocliente;

select 
	c.i_cliente_cliente,
    c.s_nome_cliente,
    c.s_cpf_cliente,
    c.d_nascimento_cliente,
    tc.s_dsctipocliente_tipocliente
from cliente c
inner join tipocliente tc on c.i_tipo_cliente = tc.i_tipocliente_tipocliente;



select
	prod.i_id_produtos,
    prod.v_descricao_produtos,
    prod.f_preco_produto,
    prod.d_validade_produtos,
	tp.v_categoria_tipoproduto
from produtos prod 
inner join tipoproduto tp on prod.i_tipo_produtos = tp.i_tipo_tipoproduto order by tp.v_categoria_tipoproduto; 


select 
	v.i_venda_venda,
    c.s_nome_cliente,
    tc.s_dsctipocliente_tipocliente,
    v.d_data_venda,
    v.f_valor_venda
from vendas v
inner join cliente c on v.i_cliente_cliente = c.i_cliente_cliente
inner join tipocliente tc on v.i_cliente_cliente = tc.i_tipocliente_tipocliente;