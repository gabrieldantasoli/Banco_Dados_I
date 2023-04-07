update cliente set 
	s_nome_cliente='GDOC', 
    d_nascimento_cliente='2000-01-02', 
    i_tipo_cliente=2 
where i_cliente_cliente = 1;

update cliente_tipo1 set 
	i_tipo_cliente = 1
where i_tipo_cliente = 2;

select * from cliente_tipo1;
select * from cliente_tipo2;
select * from cliente_tipo3;