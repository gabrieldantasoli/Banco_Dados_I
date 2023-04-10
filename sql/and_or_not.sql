select * from cliente
where d_nascimento_cliente IS NOT NULL and i_cliente_cliente > 10;

select * from cliente
where i_tipo_cliente > 1 OR i_cliente_cliente > 10;

select * from cliente
where (NOT i_tipo_cliente > 1) OR (NOT i_cliente_cliente > 10);