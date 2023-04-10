select i_cliente_cliente,s_nome_cliente,i_tipo_cliente
from cliente
group by i_cliente_cliente,i_tipo_cliente
having i_cliente_cliente > 10
order by i_tipo_cliente;

select i_cliente_cliente,s_nome_cliente,i_tipo_cliente
from cliente
group by i_cliente_cliente,i_tipo_cliente
having i_cliente_cliente > 10
order by s_nome_cliente;

select i_cliente_cliente,s_nome_cliente,i_tipo_cliente
from cliente
group by i_cliente_cliente,i_tipo_cliente
having i_cliente_cliente > 10
order by i_cliente_cliente;

select i_cliente_cliente,s_nome_cliente,i_tipo_cliente
from cliente
group by i_cliente_cliente,i_tipo_cliente
having i_cliente_cliente > 10
order by i_tipo_cliente, i_cliente_cliente, s_nome_cliente;


select * from cliente order by 2;

select * from cliente order by s_nome_cliente DESC;

select * from cliente order by i_tipo_cliente ASC , d_nascimento_cliente DESC;

select * from cliente order by right(s_cpf_cliente,3) , left (s_cpf_cliente,3);