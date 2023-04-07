create view cliente_data as
select s_nome_cliente, s_cpf_cliente from cliente;

create view cliente_info as 
select 
	i_cliente_cliente as "ID", 
    s_nome_cliente as "Nome", 
    s_cpf_cliente as "CPF", 
    day(d_nascimento_cliente) as "Day"
from cliente;



create view clientes_janeiro as 
select 
	i_cliente_cliente as "ID",
    s_nome_cliente as "Nome",
    s_cpf_cliente as "CPF",
    day(d_nascimento_cliente) as "BDay"
from cliente where month(d_nascimento_cliente) = 1;

create view clientes_fevereiro as
select 
	i_cliente_cliente as "ID",
    s_nome_cliente as "Nome",
    s_cpf_cliente as "CPF",
    d_nascimento_cliente as "BDay"
from cliente where month(d_nascimento_cliente) = 2;

select * from clientes_fevereiro;