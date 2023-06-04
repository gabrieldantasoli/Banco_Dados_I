select count(*) AS AGUARDANDO_PAGAMENTO
from ordem_de_compra oc
where oc.status = 'AGUARDANDO PAGAMENTO';