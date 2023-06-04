select codnf AS COD_NOTAS_FISCAIS
from nota_fiscal nf
where nf.valor_total between 3000 and 10000;