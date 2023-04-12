select * from cliente c1, cliente c2
where 
	c1.i_cliente_cliente = c2.i_cliente_cliente and 
    c1.s_nome_cliente like('G%s')
;

select * from cliente c, cliente v
where c.s_nome_cliente = v.s_nome_cliente and 
	c.d_nascimento_cliente = v.d_nascimento_cliente
;
