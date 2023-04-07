create table vendas(
	i_venda_venda INT not null ,
    i_cliente_cliente int not null,
    d_data_venda date not null,
    f_valor_venda float not null
);

alter table vendas add constraint fk_i_cliente_cliente foreign key (i_cliente_cliente) references cliente (i_cliente_cliente);


insert into vendas values(1,1,'2020-12-12',123.5);
insert into vendas values(2,2,'2020-12-01',535.2);
insert into vendas values(3,3,'2020-11-10',50.49);
insert into vendas values(4,2,'2020-10-15',1584.25);
insert into vendas values(5,1,'2020-11-20',327.80);
insert into vendas values(6,3,'2020-09-08',15);
insert into vendas values(7,3,'2020-09-07',12.99);
insert into vendas values(8,3,'2020-11-22',59.90);
insert into vendas values(9,1,'2020-10-10',235.50);
insert into vendas values(10,2,'2020-01-23',7.99);
insert into vendas values(11,4,'2020-02-15',123.5);
insert into vendas values(12,5,'2020-03-07',535.2);
insert into vendas values(13,6,'2020-04-01',50.49);
insert into vendas values(14,5,'2020-04-01',1584.25);
insert into vendas values(15,5,'2020-05-20',327.80);
insert into vendas values(16,7,'2020-03-18',15);
insert into vendas values(17,4,'2020-09-07',12.99);
insert into vendas values(18,3,'2020-12-24',59.90);
insert into vendas values(19,8,'2020-06-25',235.50);
insert into vendas values(20,2,'2020-06-26',7.99);


delete from vendas where i_venda_venda > 0;
select * from vendas;

select 
	distinct i_cliente_cliente
from vendas;