select * from cliente
where i_tipo_cliente between 1 and 3;


select * from cliente 
where d_nascimento_cliente between '1900-01-01' and '1981-01-01';


select 
	c.i_cliente_cliente as ID_Cliente,
    c.s_nome_cliente as Nome,
    c.s_cpf_cliente as CPF,
    v.f_valor_venda as VCompra,
    s_dsctipocliente_tipocliente as Tipo
from cliente c
inner join vendas v on c.i_cliente_cliente = v.i_cliente_cliente
inner join tipocliente tp on c.i_tipo_cliente = tp.i_tipocliente_tipocliente
where c.i_tipo_cliente between 2 and 3;


select * from cliente
where 
	(d_nascimento_cliente between '1900-01-01' and '1995-01-01') AND
    (i_cliente_cliente between 1 and 15)
;