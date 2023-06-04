select DISTINCT c.nome
from cliente c
join ordem_de_compra oc on c.codcli = oc.codigo_cliente
join nota_fiscal nf on oc.codordem = nf.codnf
where nf.valor_total between 500 and 5000 and 
      LOWER(c.end_cidade) = 'campina grande' and
      c.pontos > 100;