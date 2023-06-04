/* A questão quer o nome = "João da silva"*/
select e.nome AS Nome, e.end_rua AS Rua, e.end_num AS Nmr, e.end_bairro AS Bairro, e.end_cidade AS Cidade
from cliente c, cliente e
where c.cliente_indica = e.codcli and
      LOWER(c.nome) = 'joão da silva';


/*A questão quer o nome = "João" e sobrenome = "Silva"*/
select e.nome AS Nome, e.end_rua AS Rua, e.end_num AS Nmr, e.end_bairro AS Bairro, e.end_cidade AS Cidade
from cliente c, cliente e
where c.cliente_indica = e.codcli and
      LOWER(c.nome) = 'joão' and
      LOWER(c.sobrenome) = 'silva';