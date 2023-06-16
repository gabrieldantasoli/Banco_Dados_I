create view porcategoria(categoria,total_dinheiro)
as select categoria, sum(preco*estoque)
from produto
group by categoria
having sum(preco*estoque) > 3000;