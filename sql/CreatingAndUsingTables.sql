CREATE DATABASE produtos;

CREATE TABLE produtos (
	i_id_produtos INT PRIMARY KEY AUTO_INCREMENT,
    v_descricao_produtos varchar(200) not null,
    f_preco_produto float not null,
    d_validade_produtos DATE not null,
    i_tipo_produtos int not null
);

CREATE TABLE tipoproduto (
	i_tipo_tipoproduto INT primary key auto_increment,
    v_categoria_tipoproduto varchar(3)
);

alter table produtos add constraint relacao foreign key (i_tipo_produtos) references tipoproduto (i_tipo_tipoproduto); 


insert into tipoproduto values (273525171,'A');
insert into tipoproduto values (274627323,'B');
insert into tipoproduto values (193728291,'C');
insert into tipoproduto values (193727019,'D');
insert into tipoproduto values (283747272,'E');
insert into tipoproduto values (193733737,'F');

insert into produtos values (18822,"Arroz branco", 5.3, "2023-11-06",273525171);
insert into produtos values (33333,"Feijão Preto", 7, "2023-11-06",274627323);
insert into produtos values (44444,"Doce de amendoin", 2.5, "2023-11-06",273525171);
insert into produtos values (55555,"Carne bovina", 27.75, "2023-11-06",274627323);
insert into produtos values (66666,"Calabresa", 8.9, "2023-11-06",193733737);
insert into produtos values (77777,"Macarrão", 4.8, "2023-11-06",274627323);
insert into produtos values (88888,"Maçã", 4, "2023-11-06",193728291);
insert into produtos values (99999,"Feijão carioca", 6.25, "2023-11-06",273525171);
insert into produtos values (11111,"Ervilha", 3, "2023-11-06",274627323);
insert into produtos values (22222,"Chocolate", 3.60, "2023-11-06",283747272);
insert into produtos values (33333,"Cachaça", 9, "2023-11-06",283747272);

select * from produtos;
select * from tipoproduto;
select * from produtos where i_tipo_produtos = 273525171;