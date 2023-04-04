/* DML  -->  DATA MANIPULATION LANGUAGE  */

/* insert into <tabela> (colunas) values (valores)*/ 

insert into tipocliente values (01, 'Pessoa Física');
insert into tipocliente values (02, 'Pessoa Jurídica');
insert into tipocliente values (03, 'Cliente Especial');

insert into cliente values (01, 'Gabriel Dantas','12345678910','2003-06-11',01);
insert into cliente values (02, 'Toin do grau', '23456789101','1989-11-18',02);
insert into cliente values (05, 'Luiz Gonzaga', '34567891011','1923-02-11','03');
insert into cliente values (06, 'Maria Silva', '12345678900', '1995-09-22', 01);
insert into cliente values (07, 'João Santos', '23456789001', '1988-05-14', 02);
insert into cliente values (08, 'Ana Pereira', '34567890102', '1972-11-01', 03);
insert into cliente values (09, 'Paulo Souza', '45678901203', '1990-08-08', 01);
insert into cliente values (10, 'Mariana Costa', '56789012304', '1985-04-05', 02);
insert into cliente values (11, 'Lucas Almeida', '67890123405', '1978-12-31', 03);
insert into cliente values (12, 'Julia Ferreira', '78901234506', '1998-07-19', 01);
insert into cliente values (13, 'Felipe Santos', '89012345607', '1983-03-17', 02);
insert into cliente values (14, 'Larissa Oliveira', '90123456708', '1975-09-12', 03);
insert into cliente values (15, 'Roberto Alves', '01234567809', '1992-06-24', 01);
insert into cliente values (16, 'Raquel Lima', '12345678910', '1980-02-29', 02);
insert into cliente values (17, 'Fernando Silva', '23456789011', '1971-10-11', 03);
insert into cliente values (18, 'Gabriela Soares', '34567890112', '1993-05-23', 01);
insert into cliente values (19, 'Marcos Costa', '45678901213', '1987-01-07', 02);
insert into cliente values (20, 'Camila Pereira', '56789012314', '1979-08-03', 03);
insert into cliente values (21, 'Renato Almeida', '67890123415', '1996-04-20', 01);
insert into cliente values (22, 'Viviane Ferreira', '78901234516', '1981-12-16', 02);
insert into cliente values (23, 'Rodrigo Santos', '89012345617', '1974-06-27', 03);
insert into cliente values (24, 'Jéssica Oliveira', '90123456718', '1997-03-08', 01);
insert into cliente values (25, 'Luiz Gustavo Alves', '01234567819', '1986-11-02', 02);


insert into cliente (i_cliente_cliente,s_nome_cliente,s_cpf_cliente,i_tipo_cliente) values (26,'Gabrielzin Rei Delas','12464389634',03);
insert into cliente (i_cliente_cliente,s_nome_cliente,s_cpf_cliente,i_tipo_cliente) values (27,'Alda do grau','19294920202',02);

select * from cliente;