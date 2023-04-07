select * from cliente;

select * from cliente where i_tipo_cliente = 2 and month(d_nascimento_cliente) = 1;

select * from cliente where i_tipo_cliente = 1 and month(d_nascimento_cliente) in (4,5,6,7,8,9,10,11,12);


select * from cliente 
where 
	i_tipo_cliente in (1,2,3) and
    (month(d_nascimento_cliente) >= 5 and month(d_nascimento_cliente) <= 9)
;
