
select max(c.i_cliente_cliente)+1 as next_cliente from cliente c;


insert into cliente_aux values(
	(select max(c.i_cliente_cliente)+1 from cliente_aux c),
    "Gabriel Santos",
    "19349485721",
    "2000-01-11",
    03
);


select * from cliente_aux;