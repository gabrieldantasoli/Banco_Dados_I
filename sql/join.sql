/*
left join --> prioridade à tabela da esquerda
right join --> prioridade à tabela da direita
*/

select *
from cliente c
right join vendas v on c.i_cliente_cliente = v.i_cliente_cliente;