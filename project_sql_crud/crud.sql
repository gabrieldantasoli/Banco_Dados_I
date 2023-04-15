CREATE DATABASE cadastro;

CREATE TABLE pessoas (
	s_nome_pessoas varchar(50) not null,
    s_rg_pessoas char(7) not null,
    s_cpf_pessoas char(11) not null,
    i_limite_pessoas int not null,
    PRIMARY KEY (s_cpf_pessoas)
);

alter table pessoas modify column i_limite_pessoas float not null;

insert into cadastro.pessoas values ("Renan chef geral","2345678","23456789012",18000.00);
insert into cadastro.pessoas values ("Rian dos Santos almeida","1234567","12345678911",3000.50);
insert into cadastro.pessoas values ("Samuel Gustavo D. Oliveira","2948281","49382716500",7000.00);
insert into cadastro.pessoas values ("Gabriel Dantas de O.","1838482","19395746212",13000.00);
insert into cadastro.pessoas values ("André da cunha pinto","1483029","10296482756",1200.00);

select * from pessoas where s_cpf_pessoas = "12345678911";

update pessoas set i_limite_pessoas = 15000 where s_cpf_pessoas = "19395746212";

select * from pessoas where s_cpf_pessoas = "19395746212";

delete from pessoas where s_cpf_pessoas = "23456789012";

select * from pessoas;