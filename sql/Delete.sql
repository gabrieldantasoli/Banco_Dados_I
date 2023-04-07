/* BEGIN : CRIANDO TABELA DE PRODUTOS E TIPO DE PRODUTOS AUXILIARES */
CREATE TABLE produtos2 (
	i_id_produtos INT PRIMARY KEY AUTO_INCREMENT,
    v_descricao_produtos varchar(200) not null,
    f_preco_produto float not null,
    d_validade_produtos DATE not null,
    i_tipo_produtos int not null
);

CREATE TABLE tipoproduto2 (
	i_tipo_tipoproduto INT primary key auto_increment,
    v_categoria_tipoproduto varchar(3)
);
/* END : CRIANDO TABELA DE PRODUTOS E TIPO DE PRODUTOS AUXILIARES */



/* ADICIONANDO UM RELACIONAMENTO ENTRE TABELAS */
alter table produtos2 add constraint relacao2tipoproduto2 foreign key (i_tipo_produtos) references tipoproduto2 (i_tipo_tipoproduto);



/* BEGIN : INSERINDO TODOS OS ELEMENTOS DE PRODUTOS E TIPOPRODUTOS EM SUAS RESPECTIVAS TABELAS AUXILIARES */
insert into tipoproduto2
	(i_tipo_tipoproduto,v_categoria_tipoproduto)
select 
	i_tipo_tipoproduto,
    v_categoria_tipoproduto
from tipoproduto;


/*insert into produtos2
	(i_id_produtos,v_descricao_produtos,f_preco_produto,d_validade_produtos,i_tipo_produtos)
select
	i_id_produtos,
    v_descricao_produtos,
    f_preco_produto,
    d_validade_produtos,
    i_tipo_produtos
from produtos;*/
insert into produtos2 select * from produtos;
/* END : INSERINDO TODOS OS ELEMENTOS DE PRODUTOS E TIPOPRODUTOS EM SUAS RESPECTIVAS TABELAS AUXILIARES */



delete from produtos2 where i_tipo_produtos > 0;

delete from produtos2 where i_id_produtos = 11111;
delete from produtos2 where i_id_produtos = 18822;
delete from produtos2 where d_validade_produtos = "2023-11-06";

select * from tipoproduto;
select * from tipoproduto2;
select * from produtos;
select * from produtos2;