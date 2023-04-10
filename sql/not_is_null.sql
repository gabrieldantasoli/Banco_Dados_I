insert into cliente values (200,"Matador","11122233344",null,1);
insert into cliente values (201,"Matador1","10122233344",null,1);
insert into cliente values (202,"Matador2","10022233344",null,1);

select * from cliente where d_nascimento_cliente IS NOT NULL;
select * from cliente where d_nascimento_cliente IS NULL;