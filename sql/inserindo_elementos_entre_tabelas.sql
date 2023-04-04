/*
CREATE TABLE `cliente_aux` (
  `i_cliente_cliente` int NOT NULL AUTO_INCREMENT,
  `s_nome_cliente` varchar(50) NOT NULL,
  `s_cpf_cliente` char(11) NOT NULL,
  `d_nascimento_cliente` date DEFAULT NULL,
  `i_tipo_cliente` tinyint NOT NULL,
  PRIMARY KEY (`i_cliente_cliente`),
  KEY `relacao` (`i_tipo_cliente`),
  CONSTRAINT `relacao_aux` FOREIGN KEY (`i_tipo_cliente`) REFERENCES `tipocliente` (`i_tipocliente_tipocliente`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
*/


/* INSERE TODOS OS ELEMENTOS DE CLIENTE EM CLIENTE AUX*/
insert into cliente_aux
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente > 0;


/* INSERE TODOS OS ELEMENTOS DE CLIENTE EM CLIENTE_TIPO1 , ONDE O TIPO DO CLIENTE == 1*/
insert into cliente_tipo1
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 1;

/* INSERE TODOS OS ELEMENTOS DE CLIENTE EM CLIENTE_TIPO2 , ONDE O TIPO DO CLIENTE == 2*/
insert into cliente_tipo2
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 2;

/* INSERE TODOS OS ELEMENTOS DE CLIENTE EM CLIENTE_TIPO3 , ONDE O TIPO DO CLIENTE == 3*/
insert into cliente_tipo3
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 3;

/*  DELETA TODOS OS DADOS DA TABELA CLIENTE  */
delete from cliente where i_tipo_cliente > 0;

/*  ADICIONA TODOS OS DADOS DE CLIENTE_AUX EM CLIENTE*/
insert into cliente
select * from cliente_aux;
/* ou da seguinte forma*/
insert into cliente 
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente_aux where i_tipo_cliente > 0;

select * from cliente;
select * from cliente_aux;
select * from cliente_tipo1;
select * from cliente_tipo2;
select * from cliente_tipo3;