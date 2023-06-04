select ct.nome AS CATEGORIAS
from categoria ct
inner join produto p on p.cod_categoria = ct.codcat
group by ct.nome
having AVG(p.preco_venda) > 1000;