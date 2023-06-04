select DISTINCT t.nome AS TRANSPORTADORAS
from ordem_de_compra oc
join transportadora t on oc.codigo_transportadora = t.codtrans
where oc.valor_frete > 100;