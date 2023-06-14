
create view ordems_de_compras(codigo, datac, status, frete, valor)
as select oc.codordem, oc.data_compra,oc.status, oc.valor_frete, nf.valor_total
from ordem_de_compra oc, nota_fiscal nf
where oc.codordem = nf.cOD_ORDEM_COMPRA  and oc.codigo_cliente = 5;
