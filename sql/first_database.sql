create database bancodedados1;

create table cliente(
	i_cliente_cliente Int PRIMARY KEY AUTO_INCREMENT,
    s_nome_cliente VARCHAR(50) not null,
    s_cpf_cliente char(11) not null,
    d_nascimento_cliente DATETIME,
    i_tipo_cliente TinyInt not null,
    i_idade_cliente TinyInt
);

create table tipocliente(
   i_tipocliente_tipocliente tinyint primary key auto_increment,
   s_dsctipocliente_tipocliente varchar(100)
);

/* alter table <tabela_origin> add constraint <nome_restrição> foreign key (<campo_tabela_origin>) references <tabela_destin0> (<campo_tabela_destino>)*/
alter table cliente add constraint relacao foreign key (i_tipo_cliente) references tipocliente (i_tipocliente_tipocliente);

select * from cliente;