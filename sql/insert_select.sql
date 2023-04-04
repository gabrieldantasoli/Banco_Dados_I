/*
clienteCREATE TABLE `cliente_tipo1` (
  `i_cliente_cliente` int NOT NULL AUTO_INCREMENT,
  `s_nome_cliente` varchar(50) NOT NULL,
  `s_cpf_cliente` char(11) NOT NULL,
  `d_nascimento_clientecliente` date DEFAULT NULL,
  `i_tipo_cliente` tinyint NOT NULL,
  PRIMARY KEY (`i_cliente_cliente`),
  KEY `relacao` (`i_tipo_cliente`),
  CONSTRAINT `relacao_01` FOREIGN KEY (`i_tipo_cliente`) REFERENCES `tipocliente` (`i_tipocliente_tipocliente`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
*/

insert into cliente_tipo1
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 1;


insert into cliente_tipo2
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 2;

insert into cliente_tipo3
	(i_cliente_cliente,s_nome_cliente,s_cpf_cliente,d_nascimento_cliente,i_tipo_cliente)
select 
	i_cliente_cliente,
    s_nome_cliente,
    s_cpf_cliente,
    d_nascimento_cliente,
    i_tipo_cliente
from cliente where i_tipo_cliente = 3;




select * from cliente_tipo1;
select * from cliente_tipo2;
select * from cliente_tipo3;