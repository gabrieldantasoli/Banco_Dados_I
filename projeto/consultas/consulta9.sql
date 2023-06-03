select nome
from (SELECT AVG(preco_venda),d.nome
from produto p,categoria d
where d.codcat = p.cod_categoria
group by d.nome
having AVG(preco_venda) > 1000 )

