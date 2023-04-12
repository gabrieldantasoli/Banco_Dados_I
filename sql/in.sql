select * from cliente
where right(s_cpf_cliente,2) = 11 OR right(s_cpf_cliente,2) = 44;

select * from cliente
where right(s_cpf_cliente,2) in (11,44);

select * from cliente
where right(s_cpf_cliente,1) in (0,1,2,3) 
order by right(s_cpf_cliente,11);

select * from cliente
where d_nascimento_cliente in (select d_nascimento_cliente from cliente where d_nascimento_cliente > '1900-01-01' AND d_nascimento_cliente < '1980-01-01');


select d_nascimento_cliente from cliente where d_nascimento_cliente > '1900-01-01' AND d_nascimento_cliente < '1980-01-01';
