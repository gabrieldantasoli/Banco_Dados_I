select f.nome AS NOME_FORNECEDOR
from fornecedor f
inner join fornecimento ft on f.codforn = ft.codigo_fornecedor
inner join produto p on ft.codigo_produto = p.codprod
group by f.nome
having AVG(p.preco_venda) <= 163;